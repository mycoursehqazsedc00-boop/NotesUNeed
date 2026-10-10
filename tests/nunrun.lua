-- usage: texlua nunrun.lua <built_dir> <scenario> ; prints  RESULT|name|PASS/FAIL|detail   and  SIG|name|<state signature>
NUN_DIR = arg[1]
local want = arg[2]
local SD = (arg and arg[0] or ""):match("^(.*)/[^/]*$") or "."
dofile(SD .. "/nunenv.lua")

local function ser(v, depth)
  depth = depth or 0
  local t = type(v)
  if t == "table" then
    if depth > 6 then return "{...}" end
    local ks, out = {}, {}
    for k in pairs(v) do ks[#ks + 1] = k end
    table.sort(ks, function(a, b) if type(a) ~= type(b) then return type(a) < type(b) end return a < b end)
    for _, k in ipairs(ks) do out[#out + 1] = tostring(k) .. "=" .. ser(v[k], depth + 1) end
    return "{" .. table.concat(out, ",") .. "}"
  elseif t == "string" then return string.format("%q", v) else return tostring(v) end
end
function dumpData() return ser(NuNData) end
function boot()
  LoadAddon(); FireEvent("VARIABLES_LOADED"); FireEvent("PLAYER_ENTERING_WORLD"); Tick(0.5, 20)
end
local function setUnit(u, d) W.units[u] = d end
function slash(cmd)
  local pList = cmd
  SlashCmdList["NOTEUN"](pList)
end
local function noerr(msg)
  if #ERRORS > 0 then error((msg or "errors") .. ": " .. ERRORS[1].where .. " -> " .. ERRORS[1].msg:sub(1, 260), 0) end
end
local function check(c, msg) if not c then error(msg or "check failed", 0) end end
local function chatHas(s) for _, l in ipairs(CHAT) do if l:find(s, 1, true) then return true end end return false end
local BOB = { name = "Bob", class = "Mage", classToken = "MAGE", race = "Human", sex = 2, level = 30, faction = "Alliance", isPlayer = true,
              guild = "Bobs Guild", guildRank = "Leader", guildIndex = 0 }

S = {}
S.init = function() boot(); noerr("init"); check(NuNData[W.realm], "realm table created"); return "init ok" end
S.help = function() boot(); slash("-h"); noerr("help"); check(#CHAT > 0, "help printed something"); return #CHAT .. " chat lines" end
S.options = function() boot(); slash(""); noerr("options"); return "options ok" end
S.target_note = function()
  boot(); setUnit("target", BOB)
  slash("-t"); noerr("-t")
  check(NuNFrame._shown, "note frame shown")
  NuNText:SetText("Met Bob in Goldshire. Great mage.")
  Click(NuNButtonSaveNote); noerr("save")
  check(NuNData[W.realm]["Bob"], "Bob note stored")
  return "stored"
end
S.reopen_note = function()
  S.target_note(); NuN_HideFrame(); ResetErrors()
  slash("Bob"); noerr("reopen")
  check(NuNFrame._shown, "frame shown on reopen")
  check(NuNText:GetText():find("Great mage", 1, true), "text restored: " .. tostring(NuNText:GetText()))
  return "reopened"
end
S.delete_note = function()
  S.target_note(); ResetErrors(); slash("Bob"); noerr("open")
  Click(NuNButtonDelete); noerr("delete click")
  check(NuNcDeleteFrame._shown, "delete confirm shown")
  Click(NuNcDeleteButton); noerr("confirm delete")
  check(not NuNData[W.realm]["Bob"], "Bob note removed")
  return "deleted"
end
S.general_note = function()
  boot(); slash("-g MyNote"); noerr("-g")
  NuNGNoteTextScroll:SetText("Remember to buy reagents")
  Click(NuNGNoteButtonSaveNote); noerr("save general")
  local n = (NuNData["notes~"] and NuNData["notes~"]["MyNote"]) or (NuNData[W.realm] and NuNData[W.realm]["notes~"] and NuNData[W.realm]["notes~"]["MyNote"])
  check(n, "general note stored (account or realm level)")
  return "general stored"
end
S.delete_general = function()
  S.general_note(); ResetErrors()
  NuNGNoteFrame:Hide(); slash("-g MyNote"); noerr("reopen general")
  check(NuNGNoteFrame._shown, "general note reopened")
  Click(NuNGNoteButtonDelete); noerr("delete general click")
  Click(NuNcDeleteButton); noerr("confirm")
  check(not (NuNData["notes~"] and NuNData["notes~"]["MyNote"]) and not NuNData[W.realm]["notes~"]["MyNote"], "general note removed")
  return "general deleted"
end
S.tooltip_unit = function()
  S.target_note(); ResetErrors()
  setUnit("mouseover", BOB)
  GameTooltip:SetOwner(UIParent, "ANCHOR_NONE"); GameTooltip:SetUnit("mouseover")
  GameTooltip:Show()
  _G.this = GameTooltip; try("GameTooltip OnShow", NuN_GameTooltip_OnShow)
  noerr("tooltip")
  local lines = {}
  for i = 1, 14 do local l = NuN_Tooltip._lines[i]; if l then lines[#lines + 1] = l.left end end
  check(#lines > 0, "NuN tooltip produced lines")
  local joined = table.concat(lines, "|")
  check(joined:find("Great mage", 1, true) or joined:find("Bob", 1, true), "tooltip mentions the note/contact: " .. joined)
  return "tooltip lines=" .. #lines
end
-- ---- searching
local function selectSearchType(cmd)
  local id = NuNGet_CommandID(NUN_SEARCHFOR, cmd)
  _G.this = { GetID = function() return id end }
  NuNOptionsSearchDropDown_OnClick()
end
local function doSearch(text)
  NuNSearchTextBox:SetText(text)
  NuNSearch_Search()
end
local function hits() local t = NuNSearchTitleText:GetText() or ""; return tonumber(t:match("%((%d+)%)")) or -1 end
S.search_text = function()
  S.target_note(); ResetErrors(); slash("-a"); noerr("-a")
  selectSearchType("Text"); doSearch("mage"); noerr("search plain")
  return "mage=" .. hits()
end
S.search_special = function()
  S.target_note(); ResetErrors(); slash("-a"); noerr("-a"); selectSearchType("Text")
  for _, q in ipairs({ "(", "[", "%", "50%", "a(b", "a)b", "[a-", "%b", "." }) do
    ResetErrors(); doSearch(q); noerr("search for " .. q)
  end
  return "all special-character searches ran"
end
S.search_literal = function()
  S.target_note(); ResetErrors()
  NuNData[W.realm]["Bob"].txt = "Great mage. Pays 50% (rare) deals. Cost: 1.5g"
  slash("-a"); noerr("-a"); selectSearchType("Text")
  local out = {}
  for _, q in ipairs({ "mage", "MAGE", "Great Mage", "50%", "(rare)", "1.5g", "1x5g", "zzz", "a-b" }) do
    ResetErrors(); doSearch(q); noerr("q=" .. q)
    out[#out + 1] = q .. "=" .. hits()
  end
  return table.concat(out, " ")
end
-- ---- tooltip info extraction with "/" lines
S.extract_slash = function()
  boot()
  GameTooltip:SetOwner(UIParent, "ANCHOR_NONE")
  GameTooltip:AddLine("Elixir of Test"); GameTooltip:AddLine("Requires Level 40"); GameTooltip:AddLine("Mining Rank 3/5 (Skill)")
  GameTooltip:AddLine("Use: Restores 100 health / mana"); 
  try("extract", NuN_ExtractTooltipInfo, "Elixir of Test", "GameTooltip"); noerr("extract")
  return "extract ok"
end
S.pinned_hover = function()
  boot(); ResetErrors()
  NuN_PinnedTooltip:SetOwner(UIParent, "ANCHOR_NONE"); NuN_PinnedTooltip:AddLine("Title"); NuN_PinnedTooltip:AddLine("Body")
  Enter(NuN_PinnedEditButton); noerr("pinned edit hover")
  return "hover ok"
end
S.cmd_noarg = function()
  boot(); ResetErrors()
  slash("-ca"); noerr("-ca with no name")
  slash("-ch"); noerr("-ch with no name")
  return "no-arg ok"
end
S.friends = function()
  boot(); ResetErrors()
  W.friends = { { name = "Alice", level = 20, class = "Priest", area = "Stormwind", connected = 1 }, { name = "Bob", level = 30, class = "Mage", area = "?", connected = nil } }
  W.ignores = { "Troll" }
  FireEvent("FRIENDLIST_UPDATE"); FireEvent("IGNORELIST_UPDATE"); noerr("friend/ignore events")
  check(NuNData[W.realm]["Alice"] or true, "")
  return "friends=" .. tostring(NuNData[W.realm]["Alice"] ~= nil) .. " ignored=" .. tostring(NuNData[W.realm]["Troll"] ~= nil)
end
S.level_up = function()
  boot(); ResetErrors(); NuNData[W.realm]["Tester"] = NuNData[W.realm]["Tester"] or { }
  FireEvent("PLAYER_LEVEL_UP"); noerr("level up")
  return "level up ok"
end
S.party = function()
  boot(); ResetErrors(); W.partyN = 2; FireEvent("PARTY_MEMBERS_CHANGED"); noerr("party")
  return "party ok"
end
S.upgrade_old_settings = function()
  NuNSettings = { Version = "2.00", TestRealm = { toolTips = "1" } }
  NuNData = { TestRealm = { Bob = { faction = "Alliance" } } }
  boot(); noerr("upgrade")
  check(NuNSettings.Version == NUN_VERSION, "version bumped: " .. tostring(NuNSettings.Version))
  check(NuNSettings.TestRealm.mScale == 1.00, "mScale defaulted")
  return "upgraded " .. tostring(NuNSettings.Version)
end


S.quest_accept = function()
  boot(); ResetErrors()
  W.titleText = "Test Quest"; W.quests = { { title = "Test Quest", level = 10 } }
  QuestDetailAcceptButton_OnClick(); noerr("accept click")
  FireEvent("QUEST_LOG_UPDATE"); noerr("quest log update")
  Tick(0.5, 20); FireEvent("QUEST_LOG_UPDATE"); noerr("quest log update 2")
  return "quest accepted"
end
S.quest_handin = function()
  boot(); ResetErrors()
  W.titleText = "Test Quest"; W.quests = { { title = "Test Quest", level = 10, complete = 1 } }
  QuestRewardCompleteButton_OnClick(); noerr("hand in")
  Tick(1, 5); FireEvent("QUEST_LOG_UPDATE"); noerr("after hand in")
  return "quest handed in"
end
S.quest_abandon = function()
  boot(); ResetErrors()
  W.abandonName = "Test Quest"; W.quests = { { title = "Test Quest", level = 10 } }
  AbandonQuest(); noerr("abandon")
  Tick(1, 5); FireEvent("QUEST_LOG_UPDATE"); noerr("after abandon")
  return "quest abandoned"
end
S.quest_log_ui = function()
  boot(); ResetErrors()
  W.quests = { { title = "Zone A", isHeader = true }, { title = "Test Quest", level = 10 }, { title = "Other Quest", level = 12, complete = 1 } }
  QuestLog_Update(); noerr("QuestLog_Update hook")
  return "quest log ui ok"
end
S.friends_ui = function()
  boot(); ResetErrors()
  W.friends = { { name = "Alice", level = 20, class = "Priest", area = "Stormwind", connected = 1 } }
  FriendsList_Update(); noerr("FriendsList_Update")
  IgnoreList_Update(); noerr("IgnoreList_Update")
  return "friends ui ok"
end
S.guild_ui = function()
  boot(); ResetErrors()
  W.guildRoster = { { name = "Gina", rank = "Officer", rankIndex = 1, level = 60, class = "Priest", zone = "Orgrimmar", note = "", officerNote = "", online = 1 } }
  GuildStatus_Update(); noerr("GuildStatus_Update")
  WhoList_Update(); noerr("WhoList_Update")
  return "guild/who ui ok"
end
S.itemref_player = function()
  boot(); ResetErrors()
  W.shift = true
  SetItemRef("player:Bob", "[Bob]", "LeftButton"); noerr("SetItemRef player shift")
  W.shift = false; W.alt = true; W.shift = true
  SetItemRef("player:Bob", "[Bob]", "LeftButton"); noerr("SetItemRef player shift+alt")
  return "itemref player ok"
end
S.itemref_item = function()
  boot(); ResetErrors()
  W.shift = true; W.alt = true
  local link = "|cffffffff|Hitem:6948:0:0:0|h[Hearthstone]|h|r"
  SetItemRef("item:6948:0:0:0", link, "LeftButton"); noerr("SetItemRef item shift+alt")
  return "itemref item ok"
end
S.delete_then_search = function()
  S.target_note(); ResetErrors(); slash("-a")
  slash("Bob"); Click(NuNButtonDelete); Click(NuNcDeleteButton); noerr("delete")
  doSearch("Bob"); noerr("search after delete")
  return "ok"
end
S.long_note = function()
  boot(); ResetErrors(); W.units.target = BOB; slash("-t")
  NuNText:SetText(string.rep("lorem ipsum ", 400)); Click(NuNButtonSaveNote); noerr("save long")
  slash("Bob"); noerr("reopen long")
  return "long ok len=" .. #NuNText:GetText()
end
S.note_with_special_name = function()
  boot(); ResetErrors()
  slash("-g Odd(Name)%x[1]"); noerr("-g special")
  NuNGNoteTextScroll:SetText("body"); Click(NuNGNoteButtonSaveNote); noerr("save special")
  NuNGNoteFrame:Hide(); slash("-g Odd(Name)%x[1]"); noerr("reopen special")
  return "special names ok"
end


S.quest_text_literal = function()
  boot(); ResetErrors()
  NuNSettings[W.realm].autoQ = "1"
  W.quests = { { title = "Hyphen Quest", level = 10, desc = "Slay the well-known foes (3) - quickly. Gain 5% more.", obj = "Kill 3 (three) foes - fast." } }
  for i = 1, 4 do try("update quests", NuN_UpdateQuestNotes, "QUEST_LOG_UPDATE"); Tick(0.5, 10) end
  noerr("quest note updates")
  local hist = NuNData[W.realm].QuestHistory and NuNData[W.realm].QuestHistory["Tester"] and NuNData[W.realm].QuestHistory["Tester"]["Hyphen Quest"]
  local gen = (NuNData["notes~"] and NuNData["notes~"]["Hyphen Quest"]) or (NuNData[W.realm]["notes~"] and NuNData[W.realm]["notes~"]["Hyphen Quest"])
  local function occ(t) if not t then return -1 end local _, c = (t.txt or ""):gsub("Slay the well%-known foes", "") return c end
  return "history=" .. tostring(hist ~= nil) .. " generalNote=" .. tostring(gen ~= nil) .. " desc-in-note=" .. occ(gen) .. " desc-in-history=" .. occ(hist)
end
S.quest_text_badpattern = function()
  boot(); ResetErrors()
  NuNSettings[W.realm].autoQ = "1"
  local descs = { "Defeat the foe (alpha and gain 5%", "Bring me 3 [rare] items. Reward is 10% (", "Wait... [see below" }
  for i, d in ipairs(descs) do
    W.quests = { { title = "Odd Quest " .. i, level = 10, desc = d, obj = "Do it", complete = (i == 2) and 1 or nil } }
    for k = 1, 3 do ResetErrors(); try("update quests", NuN_UpdateQuestNotes, "QUEST_LOG_UPDATE"); Tick(0.5, 10); noerr("quest text #" .. i .. " pass " .. k) end
  end
  return "odd quest texts ok"
end
S.npc_target_note = function()
  boot(); ResetErrors()
  W.units.target = { name = "Orc Grunt", class = "Warrior", classToken = "WARRIOR", race = "Orc", sex = 1, level = 20, faction = "Horde", isPlayer = false, tipLine2 = "Level 20 Humanoid" }
  slash("-t"); noerr("-t on npc")
  return "npc note shown=" .. tostring(NuNFrame._shown)
end
S.npc_target_note_bare = function()
  boot(); ResetErrors()
  W.units.target = { name = "Orc Grunt", class = "Warrior", classToken = "WARRIOR", race = "Orc", sex = 1, level = 20, faction = "Horde", isPlayer = false }
  slash("-t"); noerr("-t on npc with empty tooltip")
  return "npc note shown=" .. tostring(NuNFrame._shown)
end
S.chat_no_note = function()
  boot(); ResetErrors()
  try("OpenChat contact", NuN_OpenChat, "Contact"); try("OpenChat general", NuN_OpenChat, "General"); noerr("chat with no note")
  return "chat ok"
end
S.delete_no_note = function()
  boot(); ResetErrors()
  try("DeleteNote contact", NuN_DeleteNote, "Contact"); try("DeleteNote general", NuN_DeleteNote, "General"); noerr("delete with no note")
  return "delete dialogs ok"
end


-- ================================================================= backup / restore (client-mod file APIs)
local function wipe() for k in pairs(NuNData) do NuNData[k] = nil end NuN_InitialiseSavedVariables() end
local function makeNotes()
  W.units.target = BOB; slash("-t")
  NuNText:SetText('He said "hi"\nSecond line with \\ backslash and 50% (rare) [x]'); Click(NuNButtonSaveNote); noerr("save contact")
  NuN_HideFrame(); NuNGNoteFrame:Hide()
  slash("-g MyNote"); NuNGNoteTextScroll:SetText("Remember: ]] and [[ and |cffff0000red|r"); Click(NuNGNoteButtonSaveNote); noerr("save general")
  NuNGNoteFrame:Hide()
end
local function say(s) for _, l in ipairs(CHAT) do if l:find(s, 1, true) then return true end end return false end
local function stripStamp(t) return (t:gsub("%-%- written [^\n]*\n", "")) end
local BK = "NotesUNeed_backup.txt"

S.b_nobackend = function()
  boot(); makeNotes(); local snap = dumpData(); ResetErrors()
  slash("-backup"); slash("-backup status"); slash("-restore"); slash("-restore replace"); slash("-backup auto off"); slash("-backup help"); noerr("commands without a file API")
  check(say("needs the SuperWoW or VanillaHelpers"), "explains what is missing")
  check(NuNBackupFrame._scripts.OnUpdate == nil, "no per-frame work without a file API")
  Tick(60, 40); noerr("40 minutes pass")
  check(next(FILES) == nil and FILE_CALLS.write == 0, "nothing written")
  check(dumpData() == snap, "data untouched")
  return "no backend: harmless"
end
local function roundtrip(kind, opts)
  UseFileAPI(kind, opts); boot(); makeNotes(); local snap = dumpData(); ResetErrors()
  slash("-backup"); noerr("backup")
  local f = FILES[BK]; check(f, "backup file written")
  check(f:sub(1, 22) == "-- Notes'U'Need backup", "header present")
  wipe(); check(dumpData() ~= snap, "wipe changed data")
  slash("-restore"); noerr("restore")
  if dumpData() ~= snap then error("restored data differs from the original", 0) end
  slash("Bob"); noerr("open restored note"); check(NuNText:GetText():find("Second line", 1, true), "restored note opens")
  return "roundtrip ok (" .. #f .. " bytes)"
end
S.b_roundtrip_superwow = function() return roundtrip("superwow") end
S.b_roundtrip_vanilla = function() return roundtrip("vanilla") end
S.b_roundtrip_crlf = function() return roundtrip("vanilla", { crlf = true }) end
S.b_special_chars = function()
  UseFileAPI("superwow"); boot(); ResetErrors()
  local weird = { txt = 'quote " apostrophe \' backslash \\ newline\nCR\rTAB\tNUL\0 end', long = string.rep("x]]y[[z\n", 5000),
    utf = "caf\195\169 \230\188\162\229\173\151 \240\159\152\128", color = "|cffff0000red|r |Hitem:6948:0:0:0|h[Hearthstone]|h",
    n1 = 3, n2 = -0.5, n3 = 0.1 + 0.2, n4 = 1e300, n5 = 123456789012, flag = true, off = false,
    nested = { a = { b = { c = { 1, 2, 3, ["x y"] = "z", [10] = "ten" } } } }, ["key with ] and \" and \n"] = "odd key" }
  NuNData[W.realm]["Weird"] = weird; NuNData["notes~"] = NuNData["notes~"] or {}; NuNData["notes~"]["Odd (title) %s"] = { txt = "t" }
  local snap = dumpData()
  slash("-backup"); noerr("backup"); check(say("backed up"), "reported success")
  wipe(); slash("-restore"); noerr("restore")
  local r = NuNData[W.realm]["Weird"]; check(r, "weird note restored")
  for k, v in pairs(weird) do if type(v) ~= "table" and r[k] ~= v then error("field " .. tostring(k) .. " differs after roundtrip", 0) end end
  check(r.nested.a.b.c[1] == 1 and r.nested.a.b.c["x y"] == "z" and r.nested.a.b.c[10] == "ten", "nested table intact")
  check(r["key with ] and \" and \n"] == "odd key", "odd key intact")
  if dumpData() ~= snap then error("full dump differs after roundtrip", 0) end
  return "special characters survive"
end
S.b_verify_fail = function()
  UseFileAPI("superwow", { truncate = true }); boot(); makeNotes(); ResetErrors()
  slash("-backup"); noerr("backup command itself must not raise")
  check(say("FAILED"), "failure is reported"); check(not say("backed up"), "no false success message")
  return "truncated write detected"
end
S.b_write_fail = function()
  UseFileAPI("vanilla", { failWrite = true }); boot(); makeNotes(); ResetErrors()
  slash("-backup"); noerr("backup"); check(say("FAILED") and say("disk full"), "error text shown")
  slash("-backup status"); check(say("last error"), "status shows last error")
  return "write error reported"
end
S.b_corrupt = function()
  UseFileAPI("superwow"); boot(); makeNotes(); slash("-backup"); local snap = dumpData(); ResetErrors()
  FILES[BK] = FILES[BK]:sub(1, math.floor(#FILES[BK] * 0.6))
  slash("-restore"); noerr("restore of damaged file"); check(say("damaged"), "reports damage"); check(dumpData() == snap, "data untouched")
  slash("-restore replace"); check(dumpData() == snap, "replace of a damaged file also leaves data untouched")
  return "corrupt file rejected"
end
S.b_wrongfile = function()
  UseFileAPI("superwow"); boot(); makeNotes(); local snap = dumpData(); ResetErrors()
  FILES[BK] = "return { hello = 1 }"; slash("-restore"); noerr("restore"); check(say("not a Notes'U'Need backup"), "rejects foreign file")
  slash("-restore nothere"); check(say("not found"), "missing file reported"); check(dumpData() == snap, "data untouched")
  return "foreign/missing file rejected"
end
S.b_malicious = function()
  UseFileAPI("superwow"); boot(); makeNotes(); local snap = dumpData(); ResetErrors()
  local H = "-- Notes'U'Need backup\n-- format 1\n"
  local attacks = {
    "return (function() BACKUP_PWNED = true end)()",
    "BACKUP_PWNED = true return {}",
    "return setmetatable({}, {__index = function() BACKUP_PWNED = true end})",
    "return { x = (print or error)('boo') }",
    "return { [os.time()] = 1 }",
    "return { ['a'] = function() end }",
    "return 5", "return nil", "}{", "return {" .. string.rep("{", 30) .. string.rep("}", 30) .. "}",
    "return { [{}] = 1 }",
  }
  for i, a in ipairs(attacks) do
    FILES[BK] = H .. a; ResetErrors(); CHAT = {}
    slash("-restore"); noerr("restore attack " .. i); slash("-restore replace"); noerr("restore replace attack " .. i)
    check(BACKUP_PWNED == nil, "attack " .. i .. " executed code!")
    check(dumpData() == snap, "attack " .. i .. " changed data")
  end
  return #attacks .. " hostile files rejected, nothing executed"
end
S.b_merge = function()
  UseFileAPI("superwow"); boot(); makeNotes(); slash("-backup"); ResetErrors()
  NuNData[W.realm]["Bob"].txt = "CHANGED LATER"; NuNData["notes~"]["MyNote"] = nil
  slash("-restore"); noerr("merge restore")
  check(NuNData[W.realm]["Bob"].txt == "CHANGED LATER", "existing note kept")
  check(NuNData["notes~"]["MyNote"] ~= nil, "missing note added back")
  check(say("restored 1 notes") and say("kept"), "counts reported")
  return "merge keeps existing, adds missing"
end
S.b_replace = function()
  UseFileAPI("superwow"); boot(); makeNotes(); slash("-backup"); local atBackup = dumpData(); ResetErrors()
  NuNData[W.realm]["Bob"].txt = "CHANGED LATER"; NuNData[W.realm]["Extra"] = { txt = "extra", faction = "Alliance" }; local changed = dumpData()
  slash("-restore replace"); noerr("replace"); check(dumpData() == atBackup, "data equals the backup")
  check(FILES["NotesUNeed_prerestore.txt"], "previous notes saved first")
  slash("-restore prerestore replace"); noerr("undo"); check(dumpData() == changed, "undo returns to the pre-restore state")
  return "replace + undo ok"
end
S.b_replace_aborts_if_cannot_save = function()
  UseFileAPI("superwow"); boot(); makeNotes(); slash("-backup"); local snap = dumpData(); ResetErrors()
  UseFileAPI("superwow", { failWrite = true }); FILES[BK] = FILES[BK]  -- reads still work, writes fail
  NuNData[W.realm]["Bob"].txt = "CHANGED LATER"; local changed = dumpData()
  slash("-restore replace"); noerr("replace"); check(say("cancelled"), "replace cancelled")
  check(dumpData() == changed, "current data NOT overwritten when the safety copy failed")
  return "replace refuses to destroy unsaved data"
end
S.b_names = function()
  UseFileAPI("superwow"); boot(); makeNotes(); ResetErrors()
  slash("-backup ../../evil"); slash("-backup C:\\x\\y"); slash("-backup my.name"); slash("-backup 'quoted"); slash("-backup  "); noerr("odd names")
  for name in pairs(FILES) do
    if not name:match("^NotesUNeed_[%w_%-]+%.txt$") then error("unsafe file name written: " .. name, 0) end
  end
  check(FILES["NotesUNeed_evil.txt"] and FILES["NotesUNeed_backup.txt"], "names sanitised")
  return "file names safe: " .. (function() local t = {} for n in pairs(FILES) do t[#t + 1] = n end table.sort(t) return table.concat(t, ",") end)()
end
S.b_help_status = function()
  UseFileAPI("vanilla"); boot(); ResetErrors(); slash("-backup help"); slash("-backup status"); slash("-h"); noerr("help/status")
  check(say("VanillaHelpers"), "status names the file API"); check(say("backup and restore"), "-h lists the commands")
  return "help ok"
end
-- ---- automatic backup
S.b_auto_first = function()
  UseFileAPI("superwow"); boot(); makeNotes(); ResetErrors(); CHAT = {}
  Tick(1, 100); check(FILES[BK] == nil, "nothing before the first interval")
  Tick(1, 40); Tick(0.05, 20); noerr("auto backup")
  check(FILES[BK], "first automatic backup written"); check(say("automatic backup saved"), "announced once")
  local n = 0; for _, l in ipairs(CHAT) do if l:find("automatic backup saved", 1, true) then n = n + 1 end end
  check(n == 1, "announced exactly once")
  local snap = dumpData(); wipe(); slash("-restore"); check(dumpData() == snap, "automatic backup restores exactly")
  return "auto backup ok"
end
local function bigData(n)
  for i = 1, n do NuNData[W.realm]["Note" .. i] = { txt = "note body number " .. i .. " with some text", faction = "Alliance", class = "Mage", date = "2024-01-01" } end
end
S.b_auto_chunked = function()
  UseFileAPI("superwow"); boot(); bigData(3000); ResetErrors()
  Tick(10, 11)                      -- 110 s
  local frames = 0
  while FILES[BK] == nil and frames < 2000 do Tick(1 / 60, 1); frames = frames + 1 end
  noerr("chunked auto backup"); check(FILES[BK], "backup eventually written")
  check(frames >= 25, "serialisation spread over " .. frames .. " frames, not one hitch")
  return "3000 entries spread over " .. frames .. " frames"
end
S.b_auto_skip_same = function()
  UseFileAPI("superwow"); boot(); makeNotes(); ResetErrors()
  Tick(10, 20); check(FILES[BK] and FILE_CALLS.write == 1, "first write")
  Tick(60, 60); check(FILE_CALLS.write == 1, "unchanged data is not rewritten, writes=" .. FILE_CALLS.write)
  NuNData[W.realm]["Bob"].txt = "edited"; Tick(60, 20); check(FILE_CALLS.write == 2, "changed data is rewritten, writes=" .. FILE_CALLS.write)
  check(FILES[BK]:find("edited", 1, true), "new content on disk")
  return "writes only on change"
end
S.b_auto_combat = function()
  UseFileAPI("superwow"); boot(); makeNotes(); ResetErrors(); W.combat = true
  Tick(10, 20); check(FILES[BK] == nil, "no backup during combat")
  W.combat = false; Tick(10, 8); check(FILES[BK], "backup after combat")
  return "waits for combat to end"
end
S.b_auto_toggle = function()
  UseFileAPI("superwow"); boot(); makeNotes(); ResetErrors()
  slash("-backup auto off"); Tick(60, 60); check(FILES[BK] == nil, "off means off")
  slash("-backup auto on"); Tick(10, 20); check(FILES[BK], "on again")
  slash("-backup auto maybe"); check(say("use /nun -backup auto on"), "bad argument explained")
  return "toggle ok"
end
S.b_chunked_equals_oneshot = function()
  UseFileAPI("superwow"); boot(); bigData(500); makeNotes(); ResetErrors()
  Tick(10, 20); local auto = FILES[BK]; check(auto, "auto file")
  slash("-backup oneshot"); local manual = FILES["NotesUNeed_oneshot.txt"]; check(manual, "manual file")
  check(stripStamp(auto) == stripStamp(manual), "chunked and one-shot output identical")
  return "chunked == one-shot (" .. #auto .. " bytes)"
end
S.b_big_roundtrip = function()
  UseFileAPI("vanilla"); boot(); bigData(3000); makeNotes(); local snap = dumpData(); ResetErrors()
  local t0 = os.clock(); slash("-backup"); local t1 = os.clock(); wipe(); slash("-restore"); local t2 = os.clock(); noerr("big")
  check(dumpData() == snap, "3000-note roundtrip identical")
  return string.format("3000 notes: backup %.0f ms, restore %.0f ms (Lua 5.3; the 1.12 engine is slower)", (t1 - t0) * 1000, (t2 - t1) * 1000)
end

S.transmit_no_target = function()
  boot(); W.units.target = BOB; slash("-t"); NuNText:SetText("note to send"); Click(NuNButtonSaveNote); ResetErrors()
  slash("Bob"); try("OpenChat", NuN_OpenChat, "Contact"); noerr("open chat window")
  local before = dumpData(); local wasEnabled = NuNTransmit._enabled
  try("Transmit", NuN_Transmit); noerr("send with no recipient")
  check(dumpData() == before, "no stray transmit-log note left behind")
  check(NuNTransmit._enabled == wasEnabled, "send button state unchanged")
  return "transmit with no recipient is a no-op"
end
local fn = S[want]
if not fn then print("RESULT|" .. want .. "|FAIL|unknown scenario") os.exit(2) end
local ok, res = pcall(fn)
print("RESULT|" .. want .. "|" .. (ok and "PASS" or "FAIL") .. "|" .. tostring(res))
if ok then print("SIG|" .. want .. "|" .. dumpData():sub(1, 4000)) end
os.exit(ok and 0 or 1)
