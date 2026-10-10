-- NuNBackup.lua : optional crash-safe backup / restore for Notes'U'Need
--
-- WoW only writes SavedVariables on a clean logout or /reload, so a game crash loses every note made
-- during the session. When a client mod that can write files is installed, this module keeps a
-- backup outside SavedVariables and can restore it:
--     SuperWoW         ExportFile(filename, text) / ImportFile(filename)
--     VanillaHelpers   WriteFile(filename, mode, content) / ReadFile(filename)
-- Without one of those mods this file does nothing: no timers, no per-frame work.
--
-- Written in Lua 5.0 style on purpose (no # operator, no % operator, no varargs, no string methods).

local NUNB_PREFIX     = "NotesUNeed_";
local NUNB_DEFAULT    = "backup";
local NUNB_AUTO_FIRST = 120;      -- seconds after login before the first automatic backup
local NUNB_AUTO_EVERY = 900;      -- seconds between automatic backups
local NUNB_RETRY_BUSY = 60;       -- seconds to wait when in combat
local NUNB_CHUNK      = 100;      -- note entries serialised per frame during an automatic backup
local NUNB_MAXDEPTH   = 8;
local NUNB_MAXSIZE    = 52428800; -- refuse to restore files larger than 50 MB
local NUNB_HEADER_ID  = "-- Notes'U'Need backup";

local nunb = {
	job        = nil,
	nextAuto   = nil,
	idle       = 0,
	lastText   = nil,
	lastTime   = nil,
	lastCount  = nil,
	lastSize   = nil,
	lastFile   = nil,
	lastError  = nil,
	announced  = false,
};

local function NuNB_Say(msg)
	DEFAULT_CHAT_FRAME:AddMessage("|cffffff00NotesUNeed:|r "..msg);
end

-- ---------------------------------------------------------------------------------------------
-- Which file API is available?
-- ---------------------------------------------------------------------------------------------
function NuNBackup_Backend()
	if ( ( type(ExportFile) == "function" ) and ( type(ImportFile) == "function" ) ) then
		return "SuperWoW";
	end
	if ( ( type(WriteFile) == "function" ) and ( type(ReadFile) == "function" ) ) then
		return "VanillaHelpers";
	end
	return nil;
end

local function NuNB_WriteFile(file, text)
	local backend = NuNBackup_Backend();
	local ok, err;
	if ( backend == "SuperWoW" ) then
		ok, err = pcall(ExportFile, file, text);
	elseif ( backend == "VanillaHelpers" ) then
		ok, err = pcall(WriteFile, file, "w", text);
	else
		return false, "no file API available";
	end
	if ( not ok ) then
		return false, tostring(err);
	end
	return true;
end

local function NuNB_ReadFile(file)
	local backend = NuNBackup_Backend();
	local ok, res;
	if ( backend == "SuperWoW" ) then
		ok, res = pcall(ImportFile, file);
	elseif ( backend == "VanillaHelpers" ) then
		ok, res = pcall(ReadFile, file);
	else
		return nil;
	end
	if ( ( ok ) and ( type(res) == "string" ) and ( res ~= "" ) ) then
		return res;
	end
	return nil;
end

-- file names: only letters, digits, _ and - survive, so no path can be injected
local function NuNB_FileName(name)
	local clean = "";
	if ( ( name ~= nil ) and ( name ~= "" ) ) then
		clean = string.gsub(name, "[^%w_%-]", "");
	end
	if ( clean == "" ) then
		clean = NUNB_DEFAULT;
	end
	return NUNB_PREFIX..clean..".txt";
end

-- ---------------------------------------------------------------------------------------------
-- Serialisation (deterministic: keys are sorted so identical data gives identical text)
-- ---------------------------------------------------------------------------------------------
local function NuNB_KeyLess(a, b)
	local ta, tb = type(a), type(b);
	if ( ta ~= tb ) then
		return ta < tb;
	end
	return a < b;
end

local function NuNB_SortedKeys(t)
	local keys = {};
	for k, v in pairs(t) do
		if ( ( type(k) == "string" ) or ( type(k) == "number" ) ) then
			tinsert(keys, k);
		end
	end
	table.sort(keys, NuNB_KeyLess);
	return keys;
end

local function NuNB_Quote(s)
	local q = string.format("%q", s);
	-- write line breaks as \n so that newline translation by a file API cannot alter the data
	q = string.gsub(q, "\\\n", "\\n");
	return q;
end

-- shortest text that reads back as exactly the same number
local function NuNB_Num(v)
	local s = string.format("%.14g", v);
	if ( tonumber(s) ~= v ) then
		s = string.format("%.17g", v);
	end
	return s;
end

local function NuNB_SerKey(k)
	if ( type(k) == "string" ) then
		return "["..NuNB_Quote(k).."]";
	elseif ( type(k) == "number" ) then
		if ( ( k ~= k ) or ( k == 1/0 ) or ( k == -1/0 ) ) then
			return nil;
		end
		return "["..NuNB_Num(k).."]";
	end
	return nil;
end

local NuNB_SerValue;
NuNB_SerValue = function(v, depth)
	local t = type(v);
	if ( t == "string" ) then
		return NuNB_Quote(v);
	elseif ( t == "number" ) then
		if ( ( v ~= v ) or ( v == 1/0 ) or ( v == -1/0 ) ) then
			return nil;
		end
		return NuNB_Num(v);
	elseif ( t == "boolean" ) then
		if ( v ) then return "true"; end
		return "false";
	elseif ( t == "table" ) then
		if ( depth >= NUNB_MAXDEPTH ) then
			return nil;
		end
		local parts = {};
		local keys = NuNB_SortedKeys(v);
		for i = 1, table.getn(keys), 1 do
			local k = keys[i];
			local ks = NuNB_SerKey(k);
			local vs = NuNB_SerValue(v[k], depth + 1);
			if ( ( ks ) and ( vs ) ) then
				tinsert(parts, ks.."="..vs..",");
			end
		end
		return "{"..table.concat(parts).."}";
	end
	return nil;
end

local function NuNB_SerEntry(k, v)
	local ks = NuNB_SerKey(k);
	local vs = NuNB_SerValue(v, 2);
	if ( ( ks ) and ( vs ) ) then
		return ks.." = "..vs..",\n";
	end
	return nil;
end

-- A job serialises NuNData a few entries at a time, so an automatic backup never causes a frame hitch.
local function NuNB_NewJob()
	local job = { buf = {}, top = NuNB_SortedKeys(NuNData), ti = 1, sub = nil, si = 1, entries = 0 };
	return job;
end

-- returns true when the whole table has been serialised
local function NuNB_Step(job, maxEntries)
	local done = 0;
	while ( job.ti <= table.getn(job.top) ) do
		local tk = job.top[job.ti];
		local tv = NuNData[tk];
		if ( type(tv) == "table" ) then
			if ( not job.sub ) then
				job.sub = NuNB_SortedKeys(tv);
				job.si = 1;
				tinsert(job.buf, NuNB_SerKey(tk).." = {\n");
			end
			while ( job.si <= table.getn(job.sub) ) do
				if ( done >= maxEntries ) then
					return false;
				end
				local sk = job.sub[job.si];
				local sv = tv[sk];
				job.si = job.si + 1;
				done = done + 1;
				if ( sv ~= nil ) then
					local piece = NuNB_SerEntry(sk, sv);
					if ( piece ) then
						tinsert(job.buf, piece);
						job.entries = job.entries + 1;
					end
				end
			end
			tinsert(job.buf, "},\n");
			job.sub = nil;
		else
			local piece = NuNB_SerEntry(tk, tv);
			if ( piece ) then
				tinsert(job.buf, piece);
			end
		end
		job.ti = job.ti + 1;
	end
	return true;
end

local function NuNB_JobText(job)
	return NUNB_HEADER_ID.."\n-- format 1\n-- written "..date("%Y-%m-%d %H:%M").."\n-- entries "..job.entries.."\nreturn {\n"..table.concat(job.buf).."}\n";
end

-- Writes the text and reads it back to be sure it really is on disk. Returns ok, errorText.
local function NuNB_Save(file, text)
	local ok, err = NuNB_WriteFile(file, text);
	if ( not ok ) then
		return false, err;
	end
	local back = NuNB_ReadFile(file);
	if ( not back ) then
		return false, "the file could not be read back";
	end
	back = string.gsub(back, "\r", "");
	if ( back ~= text ) then
		return false, "the file read back does not match what was written";
	end
	return true;
end

local function NuNB_Record(file, job, text)
	nunb.lastTime  = date("%H:%M");
	nunb.lastCount = job.entries;
	nunb.lastSize  = string.len(text);
	nunb.lastFile  = file;
	nunb.lastText  = text;
	nunb.lastError = nil;
end

-- ---------------------------------------------------------------------------------------------
-- Manual backup
-- ---------------------------------------------------------------------------------------------
function NuNBackup_Now(name, quiet)
	local file = NuNB_FileName(name);
	local job = NuNB_NewJob();
	NuNB_Step(job, 1000000000);
	local text = NuNB_JobText(job);
	local ok, err = NuNB_Save(file, text);
	if ( not ok ) then
		nunb.lastError = err;
		NuNB_Say("backup FAILED ("..file.."): "..tostring(err));
		return false;
	end
	NuNB_Record(file, job, text);
	if ( not quiet ) then
		NuNB_Say("backed up "..job.entries.." notes to "..file.." ("..math.floor(string.len(text) / 1024).." KB).");
	end
	return true;
end

-- ---------------------------------------------------------------------------------------------
-- Restore
-- ---------------------------------------------------------------------------------------------
local function NuNB_Validate(t, depth, counter)
	if ( depth > NUNB_MAXDEPTH ) then
		return false;
	end
	for k, v in pairs(t) do
		local tk, tv = type(k), type(v);
		if ( ( tk ~= "string" ) and ( tk ~= "number" ) ) then
			return false;
		end
		counter.n = counter.n + 1;
		if ( tv == "table" ) then
			if ( not NuNB_Validate(v, depth + 1, counter) ) then
				return false;
			end
		elseif ( ( tv ~= "string" ) and ( tv ~= "number" ) and ( tv ~= "boolean" ) ) then
			return false;
		end
	end
	return true;
end

local function NuNB_Parse(file)
	local text = NuNB_ReadFile(file);
	if ( not text ) then
		return nil, "file '"..file.."' was not found or is empty";
	end
	if ( string.len(text) > NUNB_MAXSIZE ) then
		return nil, "file is too large";
	end
	if ( string.sub(text, 1, string.len(NUNB_HEADER_ID)) ~= NUNB_HEADER_ID ) then
		return nil, "file '"..file.."' is not a Notes'U'Need backup";
	end
	local func, err = loadstring(text, "NuNBackup");
	if ( not func ) then
		return nil, "backup file is damaged ("..tostring(err)..")";
	end
	setfenv(func, {});      -- the file can only build a table, it cannot call anything
	local ok, data = pcall(func);
	if ( ( not ok ) or ( type(data) ~= "table" ) ) then
		return nil, "backup file is damaged";
	end
	local counter = { n = 0 };
	if ( not NuNB_Validate(data, 1, counter) ) then
		return nil, "backup file contains unexpected data";
	end
	return data;
end

function NuNBackup_Restore(name, replace)
	local file = NuNB_FileName(name);
	local data, err = NuNB_Parse(file);
	if ( not data ) then
		NuNB_Say("restore FAILED: "..tostring(err));
		return false;
	end

	if ( replace ) then
		-- a genuine backup always contains notes; never wipe everything for an empty file
		local noteCount = 0;
		for tk, tv in pairs(data) do
			if ( type(tv) == "table" ) then
				for sk, sv in pairs(tv) do
					noteCount = noteCount + 1;
				end
			end
		end
		if ( noteCount == 0 ) then
			NuNB_Say("restore cancelled: "..file.." contains no notes, so replacing would only delete yours.");
			return false;
		end
		-- keep a copy of what is there now, so that replacing can always be undone
		if ( not NuNBackup_Now("prerestore", true) ) then
			NuNB_Say("restore cancelled: your current notes could not be saved first.");
			return false;
		end
		for k, v in pairs(NuNData) do
			NuNData[k] = nil;
		end
		for k, v in pairs(data) do
			NuNData[k] = v;
		end
		NuNB_Say("replaced all notes with the contents of "..file..". Your previous notes are in "..NuNB_FileName("prerestore")..".");
	else
		local added, kept = 0, 0;
		for tk, tv in pairs(data) do
			if ( type(tv) == "table" ) then
				if ( type(NuNData[tk]) ~= "table" ) then
					NuNData[tk] = {};
				end
				for sk, sv in pairs(tv) do
					if ( NuNData[tk][sk] == nil ) then
						NuNData[tk][sk] = sv;
						added = added + 1;
					else
						kept = kept + 1;
					end
				end
			elseif ( NuNData[tk] == nil ) then
				NuNData[tk] = tv;
			end
		end
		NuNB_Say("restored "..added.." notes from "..file..", kept "..kept.." existing ones.");
	end

	NuN_InitialiseSavedVariables();
	NuNB_Say("use /reload to refresh every window.");
	return true;
end

-- ---------------------------------------------------------------------------------------------
-- Automatic backup
-- ---------------------------------------------------------------------------------------------
local function NuNB_AutoEnabled()
	if ( NuNSettings ) then
		-- stored per realm like the other options; missing means enabled
		for k, v in pairs(NuNSettings) do
			if ( ( type(v) == "table" ) and ( v.backupAuto == "0" ) ) then
				return false;
			end
		end
	end
	return true;
end

local function NuNB_SetAuto(on)
	if ( NuNSettings ) then
		for k, v in pairs(NuNSettings) do
			if ( type(v) == "table" ) then
				if ( on ) then v.backupAuto = nil; else v.backupAuto = "0"; end
			end
		end
	end
	if ( on ) then
		nunb.nextAuto = GetTime() + NUNB_AUTO_FIRST;
	else
		nunb.nextAuto = nil;
		nunb.job = nil;
	end
end

local function NuNB_AutoDone()
	local job = nunb.job;
	nunb.job = nil;
	nunb.nextAuto = GetTime() + NUNB_AUTO_EVERY;
	local text = NuNB_JobText(job);
	-- identical data: leave the file alone (compare without the time-stamp line)
	if ( nunb.lastText ) then
		local a = string.gsub(text, "%-%- written [^\n]*\n", "");
		local b = string.gsub(nunb.lastText, "%-%- written [^\n]*\n", "");
		if ( a == b ) then
			return;
		end
	end
	local file = NuNB_FileName(nil);
	local ok, err = NuNB_Save(file, text);
	if ( ok ) then
		NuNB_Record(file, job, text);
		if ( not nunb.announced ) then
			nunb.announced = true;
			NuNB_Say("automatic backup saved to "..file.." ("..job.entries.." notes). Use /nun -backup help for options.");
		end
	else
		nunb.lastError = err;
		if ( not nunb.announced ) then
			nunb.announced = true;
			NuNB_Say("automatic backup failed: "..tostring(err));
		end
	end
end

local function NuNB_OnUpdate()
	if ( nunb.job ) then
		if ( NuNB_Step(nunb.job, NUNB_CHUNK) ) then
			NuNB_AutoDone();
		end
		return;
	end
	nunb.idle = nunb.idle + arg1;
	if ( nunb.idle < 1 ) then
		return;
	end
	nunb.idle = 0;
	if ( ( nunb.nextAuto ) and ( GetTime() >= nunb.nextAuto ) ) then
		if ( UnitAffectingCombat("player") ) then
			nunb.nextAuto = GetTime() + NUNB_RETRY_BUSY;
		elseif ( NuNBackup_Backend() ) then
			nunb.job = NuNB_NewJob();
		else
			nunb.nextAuto = nil;
		end
	end
end

local nunbFrame = CreateFrame("Frame", "NuNBackupFrame");
nunbFrame:RegisterEvent("PLAYER_ENTERING_WORLD");
nunbFrame:SetScript("OnEvent", function()
	if ( ( NuNBackup_Backend() ) and ( NuNB_AutoEnabled() ) ) then
		nunb.nextAuto = GetTime() + NUNB_AUTO_FIRST;
		nunbFrame:SetScript("OnUpdate", NuNB_OnUpdate);
	end
end);

-- ---------------------------------------------------------------------------------------------
-- /nun -backup   /nun -restore
-- ---------------------------------------------------------------------------------------------
local function NuNB_Help()
	NuNB_Say("backup commands (need SuperWoW or VanillaHelpers):");
	NuNB_Say(" /nun -backup [name]            save all notes now (default file "..NuNB_FileName(nil)..")");
	NuNB_Say(" /nun -restore [name]           add notes from a backup; existing notes are kept");
	NuNB_Say(" /nun -restore [name] replace   replace ALL notes with the backup (current notes are saved first)");
	NuNB_Say(" /nun -backup auto on|off       automatic backup every "..math.floor(NUNB_AUTO_EVERY / 60).." minutes");
	NuNB_Say(" /nun -backup status            show the backup state");
end

local function NuNB_Status()
	local backend = NuNBackup_Backend();
	NuNB_Say("file API: "..( backend or "none (install SuperWoW or VanillaHelpers)" ));
	if ( backend ) then
		NuNB_Say("automatic backup: "..( NuNB_AutoEnabled() and "on" or "off" ));
		if ( nunb.lastTime ) then
			NuNB_Say("last backup: "..nunb.lastTime..", "..nunb.lastCount.." notes, "..math.floor(nunb.lastSize / 1024).." KB, "..nunb.lastFile);
		else
			NuNB_Say("no backup made yet this session.");
		end
		if ( nunb.lastError ) then
			NuNB_Say("last error: "..nunb.lastError);
		end
	end
end

function NuNBackup_Command(switch, rest)
	rest = rest or "";
	local first, last, w1, w2 = string.find(rest, "^(%S+)%s*(.*)$");
	if ( w1 ) then w1 = string.lower(w1); end

	if ( ( w1 == "help" ) or ( w1 == "?" ) ) then
		NuNB_Help();
		return;
	end
	if ( w1 == "status" ) then
		NuNB_Status();
		return;
	end
	if ( not NuNBackup_Backend() ) then
		NuNB_Say("backup needs the SuperWoW or VanillaHelpers client mod, and none was found. Type /nun -backup help.");
		return;
	end

	if ( switch == "-backup" ) then
		if ( w1 == "auto" ) then
			local v = string.lower(w2 or "");
			if ( v == "on" ) then
				NuNB_SetAuto(true);
				nunbFrame:SetScript("OnUpdate", NuNB_OnUpdate);
				NuNB_Say("automatic backup is on.");
			elseif ( v == "off" ) then
				NuNB_SetAuto(false);
				NuNB_Say("automatic backup is off.");
			else
				NuNB_Say("use /nun -backup auto on  or  /nun -backup auto off");
			end
		else
			NuNBackup_Now(w1);
		end
	else
		-- /nun -restore [name] [replace]
		local name, replace = w1, false;
		if ( w1 == "replace" ) then
			name, replace = nil, true;
		elseif ( string.lower(w2 or "") == "replace" ) then
			replace = true;
		end
		NuNBackup_Restore(name, replace);
	end
end
