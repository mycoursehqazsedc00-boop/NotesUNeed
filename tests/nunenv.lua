-- Mock WoW 1.12 environment for Notes'U'Need. Requires global NUN_DIR (dir with the built test copy).
local DIR = assert(NUN_DIR, "NUN_DIR not set")

-- ---------------------------------------------------------------- Lua 5.0 / WoW compat
table.getn = table.getn or function(t) return #t end
getn = table.getn; tinsert = table.insert; tremove = table.remove; sort = table.sort; tsort = table.sort
strlower = string.lower; strupper = string.upper; strfind = string.find; strsub = string.sub; strlen = string.len
strrep = string.rep; strbyte = string.byte; strchar = string.char; strgsub = string.gsub; strgfind = string.gmatch
format = string.format; string.gfind = string.gmatch; gfind = string.gmatch
floor = math.floor; ceil = math.ceil; abs = math.abs; max = math.max; min = math.min; random = math.random
mod = function(a, b) return a - math.floor(a / b) * b end; math.mod = mod
unpack = unpack or table.unpack
-- deterministic wall clock so runs are reproducible (the addon time-stamps its notes)
function date(fmt, t) return os.date(fmt or '%c', t or (1700000000 + math.floor(CLOCK))) end
function time() return 1700000000 + math.floor(CLOCK) end
local function sortedKeys(t)
  local ks = {}
  for k in pairs(t) do ks[#ks + 1] = k end
  table.sort(ks, function(a, b)
    local ta, tb = type(a), type(b)
    if ta ~= tb then return ta < tb end
    if ta == "number" or ta == "string" then return a < b end
    return tostring(a) < tostring(b)
  end)
  return ks
end
function __iter(x)  -- Lua 5.0 "for k,v in table do", deterministic order for reproducible tests
  if type(x) ~= "table" then return x end
  local ks, i = sortedKeys(x), 0
  return function() i = i + 1; local k = ks[i]; if k ~= nil then return k, x[k] end end
end
loadstring = loadstring or function(s, name) return load(s, name or "=chunk", "t") end
setfenv = setfenv or function(f, env)  -- Lua 5.0 setfenv for a main chunk: its first upvalue is _ENV in 5.3
  local i = 1
  while true do
    local n = debug.getupvalue(f, i)
    if n == "_ENV" then debug.upvaluejoin(f, i, function() return env end, 1) return f end
    if not n then return f end
    i = i + 1
  end
end
-- in-memory file system for the client-mod file APIs (tests turn the APIs on with UseFileAPI)
FILES = {}; FILE_CALLS = { write = 0, read = 0 }
function UseFileAPI(kind, opts)
  opts = opts or {}
  ExportFile, ImportFile, WriteFile, ReadFile = nil, nil, nil, nil
  if kind == "superwow" then
    ExportFile = function(name, text) FILE_CALLS.write = FILE_CALLS.write + 1; if opts.failWrite then error("disk full") end
      if opts.truncate then text = text:sub(1, math.floor(#text / 2)) end FILES[name] = text end
    ImportFile = function(name) FILE_CALLS.read = FILE_CALLS.read + 1; return FILES[name] end
  elseif kind == "vanilla" then
    WriteFile = function(name, mode, text) FILE_CALLS.write = FILE_CALLS.write + 1; if opts.failWrite then error("disk full") end
      if opts.truncate then text = text:sub(1, math.floor(#text / 2)) end
      if mode == "a" then FILES[name] = (FILES[name] or "") .. text else FILES[name] = text end end
    ReadFile = function(name) FILE_CALLS.read = FILE_CALLS.read + 1; local t = FILES[name]; if t and opts.crlf then t = t:gsub("\n", "\r\n") end return t end
  end
end
function getglobal(n) return _G[n] end
function setglobal(n, v) _G[n] = v end

-- ---------------------------------------------------------------- bookkeeping
ERRORS = {}          -- list of {where=, msg=}
UNDEF = {}           -- undefined global reads
UNKNOWN_METHODS = {} -- frame methods the mock does not implement
CLOCK = 1000.0
CHAT = {}
local function logerr(where, msg) ERRORS[#ERRORS + 1] = { where = where, msg = tostring(msg) } end
function try(where, fn, ...)
  local ok, res = xpcall(fn, function(m) return debug.traceback(tostring(m), 2) end, ...)
  if not ok then logerr(where, res) end
  return ok, res
end

-- ---------------------------------------------------------------- frames
local Frame = {}
local function runHook(f, hook, ...)
  local fn = f._scripts[hook]
  if not fn then return end
  local old = _G.this
  _G.this = f
  local a = { ... }
  for i = 1, 9 do _G["arg" .. i] = a[i] end
  local ok, err = xpcall(fn, function(m) return debug.traceback(tostring(m), 2) end)
  _G.this = old
  if not ok then logerr((f._name or "?") .. ":" .. hook, err) end
end
Frame.runHook = runHook
setmetatable(Frame, { __index = function(_, k) return nil end })
local FrameMT = { __index = function(t, k)
  local v = Frame[k]
  if v ~= nil then return v end
  if type(k) ~= "string" or not k:match("^[A-Z]") then return nil end   -- only WoW-style Method names get a no-op fallback
  return function() UNKNOWN_METHODS[k] = (UNKNOWN_METHODS[k] or 0) + 1 end
end }
local ALLFRAMES = {}
local function newFrame(ftype, name, parent)
  local f = setmetatable({ _type = ftype, _name = name, _parent = parent, _text = "", _shown = true, _scripts = {}, _events = {},
    _id = 0, _scale = 1, _enabled = true, _value = 0, _min = 0, _max = 1, _lines = {}, _children = {}, _alpha = 1 }, FrameMT)
  if name then _G[name] = f end
  ALLFRAMES[#ALLFRAMES + 1] = f
  return f
end
function Frame.GetName(s) return s._name end
function Frame.GetParent(s) return s._parent end
function Frame.GetID(s) return s._id end
function Frame.SetID(s, v) s._id = v end
function Frame.SetParent(s, p) s._parent = p end
function Frame.GetObjectType(s) return s._type end
function Frame.IsObjectType(s, t) return s._type == t end
function Frame.Show(s) if not s._shown then s._shown = true; runHook(s, "OnShow") end end
function Frame.Hide(s) if s._shown then s._shown = false; runHook(s, "OnHide") end end
function Frame.IsShown(s) return s._shown and 1 or nil end
function Frame.IsVisible(s)
  local f = s
  while f do if not f._shown then return nil end; f = f._parent end
  return 1
end
function Frame.SetText(s, t) s._text = t; if s._type == "EditBox" then runHook(s, "OnTextChanged") end end
function Frame.GetText(s) return s._text end
function Frame.SetChecked(s, v) s._checked = (v and v ~= 0) and 1 or nil end
function Frame.GetChecked(s) return s._checked end
function Frame.Enable(s) s._enabled = true end
function Frame.Disable(s) s._enabled = false end
function Frame.IsEnabled(s) return s._enabled and 1 or nil end
function Frame.SetValue(s, v) s._value = v end
function Frame.GetValue(s) return s._value end
function Frame.SetMinMaxValues(s, a, b) s._min, s._max = a, b end
function Frame.GetMinMaxValues(s) return s._min, s._max end
function Frame.SetScale(s, v) s._scale = v end
function Frame.GetScale(s) return s._scale end
function Frame.SetAlpha(s, v) s._alpha = v end
function Frame.GetAlpha(s) return s._alpha end
function Frame.SetScript(s, h, fn) s._scripts[h] = fn end
function Frame.GetScript(s, h) return s._scripts[h] end
function Frame.RegisterEvent(s, e) s._events[e] = true end
function Frame.UnregisterEvent(s, e) s._events[e] = nil end
function Frame.IsEventRegistered(s, e) return s._events[e] end
function Frame.RegisterForClicks() end
function Frame.SetFocus(s) s._focus = true end
function Frame.ClearFocus(s) s._focus = false end
function Frame.HasFocus(s) return s._focus end
function Frame.GetNumLetters(s) return #(s._text or "") end
function Frame.GetStringWidth(s) return #(s._text or "") * 6 end
function Frame.GetStringHeight(s) return 12 end
for _, n in ipairs({ "GetWidth", "GetHeight", "GetLeft", "GetRight", "GetTop", "GetBottom", "GetFrameLevel", "GetFrameStrata",
  "GetVerticalScroll", "GetVerticalScrollRange", "GetHorizontalScroll", "GetEffectiveScale", "GetNumPoints" }) do
  Frame[n] = function() return 100 end
end
Frame.GetVerticalScroll = function() return 0 end
Frame.GetVerticalScrollRange = function() return 0 end
Frame.GetCenter = function() return 500, 400 end
Frame.GetNumChildren = function(s) return #s._children end
Frame.GetCursorPosition = function() return 500, 400 end
-- tooltips
local TTLINES = 30
local function setupTooltip(f)
  f._isTT = true
  for i = 1, TTLINES do
    newFrame("FontString", f._name .. "TextLeft" .. i, f)
    newFrame("FontString", f._name .. "TextRight" .. i, f)
  end
end
local function ttline(f, left, right, r, g, b)
  local n = #f._lines + 1
  f._lines[n] = { left = left, right = right }
  local l, rr = _G[f._name .. "TextLeft" .. n], _G[f._name .. "TextRight" .. n]
  if l then l._text = left; l._shown = true; l._color = { r, g, b } end
  if rr then rr._text = right or ""; rr._shown = right and true or false end
end
function Frame.SetOwner(s, o, a) s._owner = o; Frame.ClearLines(s) end
function Frame.ClearLines(s)
  s._lines = {}
  for i = 1, TTLINES do
    local l, r = _G[s._name .. "TextLeft" .. i], _G[s._name .. "TextRight" .. i]
    if l then l._text = nil end
    if r then r._text = nil end
  end
end
function Frame.AddLine(s, text, r, g, b)
  if text == nil then error("Usage: " .. tostring(s._name) .. ":AddLine(\"text\" [, r, g, b [, wrap]])", 2) end
  ttline(s, text, nil, r, g, b)
end
function Frame.AddDoubleLine(s, l, r)
  if l == nil then error("Usage: " .. tostring(s._name) .. ":AddDoubleLine(\"left\", \"right\" ...)", 2) end
  ttline(s, l, r)
end
function Frame.NumLines(s) return #s._lines end
function Frame.SetUnit(s, u) s._unit = u; Frame.ClearLines(s); local d = W.units[u]; if d then ttline(s, d.name); if d.tipLine2 then ttline(s, d.tipLine2) end end end
function Frame.GetUnit(s) local u = s._unit; if u and W.units[u] then return W.units[u].name, u end end
function Frame.SetHyperlink(s, link) s._link = link; Frame.ClearLines(s); ttline(s, link) end
function Frame.SetBagItem(s) end
function Frame.SetInventoryItem(s) end
function Frame.SetText_TT(s, t) ttline(s, t) end

-- ---------------------------------------------------------------- build UI from xml data
function BuildUI()
  local nodes = dofile(DIR .. "/xmlframes.lua")
  local made = {}
  for _, n in ipairs(nodes) do
    local parent = n.parent and _G[n.parent] or nil
    if parent ~= nil and type(parent) ~= "table" then parent = nil end
    if parent == nil and n.parent and n.kind ~= "region" then parent = newFrame("Frame", n.parent, UIParent) end  -- Blizzard parent frame the real client provides
    parent = parent or UIParent
    local f = newFrame(n.type, n.name, parent)
    if n.id then f._id = n.id end
    if n.hidden then f._shown = false end
    parent._children[#parent._children + 1] = f
    if n.type == "GameTooltip" then setupTooltip(f) end
    if n.kind == "region" then f._isRegion = true end
    for hook, body in pairs(n.scripts) do
      local chunk, err = load(body, "=xml:" .. tostring(n.name) .. ":" .. hook)
      if not chunk then logerr("xml-compile " .. tostring(n.name) .. ":" .. hook, err)
      else f._scripts[hook] = chunk end
    end
    made[#made + 1] = f
  end
  for _, f in ipairs(made) do runHook(f, "OnLoad") end
  return made
end

-- ---------------------------------------------------------------- WoW state + API
W = {
  realm = "TestRealm", locale = "enUS", zone = "Elwynn Forest", subzone = "Goldshire",
  units = {
    player = { name = "Tester", class = "Warrior", classToken = "WARRIOR", race = "Human", sex = 2, level = 40, faction = "Alliance",
               isPlayer = true, guild = "Test Guild", guildRank = "Member", guildIndex = 3 },
  },
  friends = {}, ignores = {}, guildRoster = {}, quests = {}, partyN = 0, raidN = 0, inGuild = true,
}
UIParent = newFrame("Frame", "UIParent", nil)
UISpecialFrames = {}
function GetTime() return CLOCK end
function GetLocale() return W.locale end
function GetCVar(n) if n == "realmName" then return W.realm end return "0" end
function GetRealmName() return W.realm end
function GetZoneText() return W.zone end
function GetSubZoneText() return W.subzone end
function GetMinimapZoneText() return W.subzone end
function GetMapContinents() return "Kalimdor", "Eastern Kingdoms" end
function GetMapZones(c)
  if c == 1 then return "Durotar", "Mulgore", "Teldrassil" end
  return "Elwynn Forest", "Westfall", "Dun Morogh"
end
function GetCurrentMapContinent() return 2 end
function GetCurrentMapZone() return 1 end
function GetPlayerMapPosition() return 0.5, 0.5 end
function SetMapToCurrentZone() end
function SetMapZoom() end
function GetNumPartyMembers() return W.partyN end
function GetNumRaidMembers() return W.raidN end
function GetPartyMember() return nil end
function GetRaidRosterInfo() return nil end
function UnitExists(u) return W.units[u] and 1 or nil end
function UnitName(u) local d = W.units[u]; if d then return d.name end end
function UnitIsPlayer(u) local d = W.units[u]; return d and d.isPlayer and 1 or nil end
function UnitClass(u) local d = W.units[u]; if d then return d.class, d.classToken end end
function UnitRace(u) local d = W.units[u]; if d then return d.race end end
function UnitSex(u) local d = W.units[u]; return d and d.sex or 1 end
function UnitLevel(u) local d = W.units[u]; return d and d.level or -1 end
function UnitFactionGroup(u) local d = W.units[u]; return d and d.faction end
function UnitIsFriend() return 1 end
function UnitIsEnemy() return nil end
function UnitCanAttack() return nil end
function UnitPlayerControlled(u) return W.units[u] and W.units[u].isPlayer and 1 or nil end
function UnitIsPVP() return nil end
function UnitPVPRank() return 0 end
function UnitIsDead() return nil end
function UnitAffectingCombat() return W.combat end
function UnitIsConnected() return 1 end
function UnitReaction() return 5 end
function UnitCreatureType(u) return "Humanoid" end
function UnitClassification() return "normal" end
function UnitInParty() return nil end
function UnitInRaid() return nil end
function UnitXP() return 100 end
function UnitXPMax() return 1000 end
function UnitIsUnit(a, b) return W.units[a] and W.units[b] and W.units[a].name == W.units[b].name and 1 or nil end
function GetGuildInfo(u) local d = W.units[u]; if d and d.guild then return d.guild, d.guildRank, d.guildIndex end end
function IsInGuild() return W.inGuild and 1 or nil end
function GetNumGuildMembers() return #W.guildRoster end
function GetGuildRosterInfo(i) local g = W.guildRoster[i]; if g then return g.name, g.rank, g.rankIndex, g.level, g.class, g.zone, g.note, g.officerNote, g.online end end
function GuildRoster() end
function GetGuildRosterShowOffline() return 1 end
function GetNumFriends() return #W.friends end
function GetFriendInfo(i) local f = W.friends[i]; if f then return f.name, f.level, f.class, f.area, f.connected end end
function ShowFriends() end
function AddFriend(n) W.friends[#W.friends + 1] = { name = n, level = 1, class = "Warrior", area = "?", connected = nil } end
function RemoveFriend(n) for i, f in ipairs(W.friends) do if f.name == n or i == n then table.remove(W.friends, i) return end end end
function GetNumIgnores() return #W.ignores end
function GetIgnoreName(i) return W.ignores[i] end
function AddIgnore(n) W.ignores[#W.ignores + 1] = n end
function DelIgnore(n) for i, v in ipairs(W.ignores) do if v == n or i == n then table.remove(W.ignores, i) return end end end
function GetNumQuestLogEntries() return #W.quests, #W.quests end
function GetQuestLogTitle(i)
  local q = W.quests[i]; if not q then return end
  return q.title, q.level or 1, q.tag, q.isHeader and 1 or nil, q.collapsed and 1 or nil, q.complete and 1 or nil
end
function SelectQuestLogEntry(i) W.selQuest = i end
function QuestLog_SetSelection(i) W.selQuest = i end
function QuestLog_UpdateQuestDetails() end
function GetQuestLogSelection() return W.selQuest or 0 end
function GetQuestLogQuestText() local q = W.quests[W.selQuest or 0]; return q and q.desc or "", q and q.obj or "" end
function ExpandQuestHeader() end
function CollapseQuestHeader() end
function GetQuestLogTimeLeft() return nil end
function GetQuestLogRewardSpell() return nil end
function GetQuestLogRequiredMoney() return 0 end
function GetQuestLogRewardInfo() return nil end
function GetQuestLogChoiceInfo() return nil end
function GetQuestLogLeaderBoard() return nil end
function GetQuestLogItemLink() return nil end
function GetQuestLogSpecialItemInfo() return nil end
function GetQuestLogRewardMoney() return 0 end
function GetNumQuestLogRewards() return 0 end
function GetNumQuestLogChoices() return 0 end
function GetNumQuestLogLeaderBoards() return 0 end
function GetQuestLogPushable() return nil end
function GetNumQuestWatches() return 0 end
function GetTitleText() return W.titleText or "" end
function GetQuestText() return W.questText or "" end
function GetObjectiveText() return W.objText or "" end
function GetProgressText() return "" end
function GetRewardText() return "" end
function GetNumQuestItems() return 0 end
function GetNumQuestRewards() return 0 end
function GetNumQuestChoices() return 0 end
function GetMoney() return 123456 end
function GetNumSkillLines() return 0 end
function GetSkillLineInfo() return nil end
function GetItemInfo(id) return nil end
function GetContainerNumSlots() return 0 end
function GetContainerItemLink() return nil end
function GetInventoryItemLink() return nil end
function GetNumWhoResults() return 0, 0 end
function GetWhoInfo() return nil end
function GetPVPRankInfo() return nil end
function GetPVPLifetimeStats() return 0, 0, 0 end
function GetNumFactions() return 0 end
function GetFactionInfo() return nil end
function InCombatLockdown() return nil end
function IsShiftKeyDown() return W.shift end
function IsControlKeyDown() return W.ctrl end
function IsAltKeyDown() return W.alt end
function PlaySound() end
function GetCursorInfo() return nil end
function GetCursorPosition() return 500, 400 end
function GetMouseFocus() return W.mouseFocus end
function GetNumTradeSkills() return 0 end
function TargetByName() end
function InspectUnit() end
function CanInspect() return nil end
function ClearInspectPlayer() end
function SendChatMessage(m, t, l, c) W.sent = W.sent or {}; W.sent[#W.sent + 1] = { m, t, l, c } end
function SendAddonMessage() end
function ChatFrame_OpenChat() end
function GetChannelList() return end
function GetDefaultLanguage() return "Common" end
function CheckInteractDistance() return nil end
function SetCursor() end
function ResetCursor() end
function IsAddOnLoaded() return nil end
function GetAddOnInfo() return nil end
function GetNumAddOns() return 0 end
function ShowUIPanel(f) if f then Frame.Show(f) end end
function HideUIPanel(f) if f then Frame.Hide(f) end end
function ToggleFrame(f) if f then if f._shown then Frame.Hide(f) else Frame.Show(f) end end end
function StaticPopup_Show(n) W.popup = n end
function StaticPopup_Visible() return nil end
function ClearTarget() W.units.target = nil end
function SendWho() end
function message(t) W.message = t end
function RunScript(s) local f = load(s); if f then f() end end
function SetWhoToUI() end
function GetNumWhoResults() return 0, 0 end
function GetAbandonQuestName() return W.abandonName or '' end
StaticPopupDialogs = {}
function UIDropDownMenu_Initialize() end
function UIDropDownMenu_ClearAll() end
function UIDropDownMenu_Refresh() end
function UIDropDownMenu_SetAnchor() end
function UIDropDownMenu_SetWidth() end
function UIDropDownMenu_SetText() end
function UIDropDownMenu_GetText() return "" end
function UIDropDownMenu_SetSelectedID() end
function UIDropDownMenu_SetSelectedName() end
function UIDropDownMenu_GetSelectedID() return 1 end
function UIDropDownMenu_AddButton() end
function UIDropDownMenu_CreateInfo() return {} end
function UIDropDownMenu_JustifyText() end
function UIDropDownMenu_SetButtonWidth() end
function CloseDropDownMenus() end
function ToggleDropDownMenu() end
function TEXT(s) return s end
TOOLTIP_DEFAULT_COLOR = { r = 1, g = 1, b = 1 }; TOOLTIP_DEFAULT_BACKGROUND_COLOR = { r = 0.09, g = 0.09, b = 0.19 }
OKAY = "Okay"; ACCEPT = "Accept"; CANCEL = "Cancel"; YES = "Yes"; NO = "No"; CLOSE = "Close"
function GameTooltip_SetDefaultAnchor(tt, p) tt._owner = p end
function GameTooltip_AddNewbieTip() end
function ScrollingEdit_OnUpdate() end
function ScrollingEdit_OnTextChanged() end
function ScrollingEdit_OnCursorChanged() end
function FauxScrollFrame_Update() end
function FauxScrollFrame_GetOffset() return 0 end
function FauxScrollFrame_OnVerticalScroll() end
function ValidateFramePosition() end
function UIPanelWindows() end
function MouseIsOver() return nil end
function ChatEdit_InsertLink() end
function this_is_not_defined() end
DEFAULT_CHAT_FRAME = { AddMessage = function(_, m) CHAT[#CHAT + 1] = tostring(m) end }
ChatFrameEditBox = newFrame("EditBox", "ChatFrameEditBox", UIParent)
SlashCmdList = {}
-- Blizzard frames/functions the addon hooks
for _, n in ipairs({ "FriendsFrameFriendButton_OnClick", "FriendsFrameIgnoreButton_OnClick", "FriendsFrameGuildPlayerStatusButton_OnClick",
  "FriendsFrameGuildStatusButton_OnClick", "FriendsFrameWhoButton_OnClick", "FriendsList_Update", "IgnoreList_Update", "GuildStatus_Update",
  "WhoList_Update", "ContainerFrameItemButton_OnClick", "SetItemRef", "PaperDollItemSlotButton_OnClick", "QuestLog_Update",
  "QuestLogRewardItem_OnClick", "QuestItem_OnClick", "QuestRewardItem_OnClick", "AbandonQuest", "QuestDetailAcceptButton_OnClick",
  "QuestRewardCompleteButton_OnClick" }) do _G[n] = function() end end
for _, n in ipairs({ "GameTooltip", "ItemRefTooltip", "ShoppingTooltip1", "ShoppingTooltip2", "WorldMapTooltip" }) do
  local f = newFrame("GameTooltip", n, UIParent); setupTooltip(f)
end
for _, n in ipairs({ "FriendsListFrame", "IgnoreListFrame", "GuildPlayerStatusFrame", "GuildStatusFrame", "RaidFrame", "TargetFrame" }) do
  newFrame("Frame", n, UIParent)._shown = false
end
for _, n in ipairs({ "MerchantNameText", "QuestFrameNpcNameText", "QuestTitleText" }) do newFrame("FontString", n, UIParent) end
for _, n in ipairs({ "FriendsFrame", "QuestLogFrame", "WorldMapFrame", "GuildFrame", "MerchantFrame", "AuctionFrame", "InspectFrame",
  "PaperDollFrame", "WhoFrame", "ContainerFrame1", "QuestFrame", "QuestLogDetailScrollChildFrame", "ChatFrame1", "CharacterFrame" }) do
  newFrame("Frame", n, UIParent)._shown = false
end
function CreateFrame(t, n, p) return newFrame(t, n, p or UIParent) end

-- ---------------------------------------------------------------- loader + driver
function LoadAddon()
  for _, f in ipairs({ "Localisation.lua", "Localisation.de.lua", "NotesUNeed.lua", "NuNBackup.lua" }) do
    if f == "NuNBackup.lua" and not io.open(DIR .. "/" .. f) then goto continue end
    local chunk, err = loadfile(DIR .. "/" .. f)
    if not chunk then error("compile " .. f .. ": " .. tostring(err)) end
    local ok, e = xpcall(chunk, function(m) return m end)
    if not ok then logerr("load " .. f, e) end
    ::continue::
  end
  local made = BuildUI()
  -- from here on record reads of undefined globals
  setmetatable(_G, { __index = function(t, k) if type(k) == "string" then UNDEF[k] = (UNDEF[k] or 0) + 1 end return nil end })
  return made
end
function ALLFRAMES_LIST() return ALLFRAMES end
function FireEvent(ev, a1, a2, a3, a4)
  _G.event = ev
  for _, f in ipairs(ALLFRAMES) do
    if f._events[ev] and f._scripts.OnEvent then runHook(f, "OnEvent", a1, a2, a3, a4) end
  end
end
function Tick(dt, steps)
  steps = steps or 1
  for _ = 1, steps do
    CLOCK = CLOCK + dt
    for _, f in ipairs(ALLFRAMES) do
      if f._scripts.OnUpdate and f._shown then runHook(f, "OnUpdate", dt) end
    end
  end
end
function Click(f, btn) _G.arg1 = btn or "LeftButton"; runHook(f, "OnClick", btn or "LeftButton") end
function Enter(f) runHook(f, "OnEnter") end
function Leave(f) runHook(f, "OnLeave") end
function ResetErrors() ERRORS = {} end
