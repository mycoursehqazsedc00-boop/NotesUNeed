NUN_DIR = arg[1]
local s0, s1, steps = tonumber(arg[2]), tonumber(arg[3]), tonumber(arg[4] or 200)
local SD = (arg and arg[0] or ""):match("^(.*)/[^/]*$") or "."
dofile(SD .. "/nunenv.lua")
local BK = os.getenv("BACKUP")
if BK then UseFileAPI(BK) end
LoadAddon(); FireEvent("VARIABLES_LOADED"); FireEvent("PLAYER_ENTERING_WORLD"); Tick(0.5, 20)
local frames = ALLFRAMES_LIST()
local clickable, hoverable, editboxes = {}, {}, {}
for _, f in ipairs(frames) do
  if f._name and f._name:find("^NuN") then
    if f._scripts.OnClick then clickable[#clickable + 1] = f end
    if f._scripts.OnEnter then hoverable[#hoverable + 1] = f end
    if f._type == "EditBox" and not f._name:find("^NuNOptionsTT") then editboxes[#editboxes + 1] = f end
  end
end
local texts = { "", "a", "Bob", "(", "[", "%", "50%", "a.b", "x-y", "very long " .. string.rep("text ", 60), "|cffffffff|Hitem:6948:0:0:0|h[Hearthstone]|h|r", "\n", "é", "%s%d" }
local cmds = { "", "-h", "-a", "-t", "-g", "-g Foo", "-g Bar baz", "-micro", "-ca", "-ca Bob", "-ch Alice", "Bob", "bob", "Alice", "Zed", "-x", "->de", "->en", "(", "%", "-g (x)", "-tt", "   " }
if BK then for _, c in ipairs({ "-backup", "-backup x", "-restore", "-restore x", "-restore replace", "-restore x replace", "-backup auto off", "-backup auto on", "-backup status", "-backup help", "-restore prerestore replace", "-backup auto" }) do cmds[#cmds + 1] = c end end
local events = { "FRIENDLIST_UPDATE", "IGNORELIST_UPDATE", "PLAYER_LEVEL_UP", "QUEST_LOG_UPDATE", "PARTY_MEMBERS_CHANGED", "RAID_ROSTER_UPDATE", "UPDATE_FACTION", "UNIT_QUEST_LOG_CHANGED", "QUEST_PROGRESS", "QUEST_COMPLETE", "QUEST_FINISHED", "QUEST_ITEM_UPDATE", "CHAT_MSG_SYSTEM", "PLAYER_ENTERING_WORLD" }
local units = {
  { name = "Bob", class = "Mage", classToken = "MAGE", race = "Human", sex = 2, level = 30, faction = "Alliance", isPlayer = true, guild = "G", guildRank = "R", guildIndex = 1 },
  { name = "Alice", class = "Priest", classToken = "PRIEST", race = "Dwarf", sex = 3, level = 60, faction = "Alliance", isPlayer = true },
  { name = "Orc Grunt", class = "Warrior", classToken = "WARRIOR", race = "Orc", sex = 1, level = 20, faction = "Horde", isPlayer = false },
}
local seen = {}
local TRACE = tonumber(os.getenv('TRACE'))
local function stepHash()
  local function ser(v, d) d = d or 0 if type(v) == 'table' then if d > 7 then return '{}' end local ks, out = {}, {} for k in pairs(v) do ks[#ks+1] = k end table.sort(ks, function(a,b) if type(a) ~= type(b) then return type(a) < type(b) end return a < b end) for _, k in ipairs(ks) do out[#out+1] = tostring(k)..'='..ser(v[k], d+1) end return '{'..table.concat(out, ',')..'}' end return tostring(v) end
  local blob = ser(NuNData)..ser(NuNSettings)
  local h = 5381 for i = 1, #blob do h = (h*33 + blob:byte(i)) % 4294967296 end return h
end
local function record(where, msg)
  local key = (msg:gsub("0x%x+", ""):match("^[^\n]*") or msg):gsub("^/home/claude/nun_[^/]*/", "")
  seen[key] = (seen[key] or 0) + 1
end
for seed = s0, s1 do
  math.randomseed(seed)
  ERRORS = {}
  NuNData[W.realm] = nil; NuN_InitialiseSavedVariables()
  W.friends = { { name = "Alice", level = 20, class = "Priest", area = "X", connected = 1 }, { name = "Bob", level = 30, class = "Mage", area = "?" } }
  W.ignores = { "Troll" }; W.quests = { { title = "Q1", level = 5 }, { title = "Q2", level = 8, complete = 1 } }
  for step = 1, steps do
    local r = math.random(1, 100)
    local label = 'r=' .. r
    if r <= 20 then
      local c = cmds[math.random(#cmds)]; label = label .. ' slash[' .. c .. ']'; try("slash '" .. c .. "'", SlashCmdList["NOTEUN"], c)
    elseif r <= 40 then
      local f = clickable[math.random(#clickable)]
      if not f:IsVisible() then f = nil end
      if f then
      W.shift = math.random() < 0.2; W.ctrl = math.random() < 0.1; W.alt = math.random() < 0.1
      label = label .. " click " .. f._name; try("click " .. f._name, function() Click(f, math.random() < 0.8 and "LeftButton" or "RightButton") end)
      W.shift, W.ctrl, W.alt = false, false, false
      end
    elseif r <= 50 then
      local f = hoverable[math.random(#hoverable)]
      if f:IsVisible() then try("enter " .. f._name, function() Enter(f); Leave(f) end) end
    elseif r <= 62 then
      local f = editboxes[math.random(#editboxes)]
      f:SetText(texts[math.random(#texts)])
    elseif r <= 78 then
      local ev = events[math.random(#events)]; label = label .. ' event ' .. ev; FireEvent(ev)
    elseif r <= 86 then
      local u = units[math.random(#units)]
      W.units.target = u; W.units.mouseover = u
      GameTooltip:SetOwner(UIParent, "ANCHOR_NONE"); GameTooltip:SetUnit("mouseover"); GameTooltip:Show()
      try("GameTooltip OnShow", function() _G.this = GameTooltip; NuN_GameTooltip_OnShow() end)
      GameTooltip:Hide()
    elseif r <= 92 then
      W.titleText = "Q" .. math.random(1, 3); try("QuestDetailAccept", QuestDetailAcceptButton_OnClick)
    else
      Tick(math.random(1, 20) * 0.1, math.random(1, 4))
    end
    if TRACE == seed then print(string.format('STEP %d %s hash=%d errs=%d', step, label, stepHash(), #ERRORS)) end
  end
  for _, e in ipairs(ERRORS) do record(e.where, e.msg) end
  local function ser(v, d)
    d = d or 0
    if type(v) == "table" then
      if d > 7 then return "{}" end
      local ks, out = {}, {}
      for k in pairs(v) do ks[#ks + 1] = k end
      table.sort(ks, function(a, b) if type(a) ~= type(b) then return type(a) < type(b) end return a < b end)
      for _, k in ipairs(ks) do out[#out + 1] = tostring(k) .. "=" .. ser(v[k], d + 1) end
      return "{" .. table.concat(out, ",") .. "}"
    end
    return tostring(v)
  end
  local rt = ""
  if BK then
    local before = ser(NuNData)
    ResetErrorsSave = #ERRORS
    try("final backup", SlashCmdList["NOTEUN"], "-backup zz")
    for k in pairs(NuNData) do NuNData[k] = nil end
    NuN_InitialiseSavedVariables()
    try("final restore", SlashCmdList["NOTEUN"], "-restore zz")
    rt = (ser(NuNData) == before) and " rt=ok" or " rt=FAIL"
  end
  local blob = ser(NuNData) .. ser(NuNSettings)
  local h = 5381
  for i = 1, #blob do h = (h * 33 + blob:byte(i)) % 4294967296 end
  local lines = {}
  for _, e in ipairs(ERRORS) do lines[#lines + 1] = ((e.msg:match("(%a+%.lua):(%d+):")) or "x") .. ":" .. (e.msg:match("%.lua:(%d+):") or "") end
  table.sort(lines)
  local uniq, last = {}, nil
  for _, l in ipairs(lines) do if l ~= last then uniq[#uniq + 1] = l; last = l end end
  print(string.format("SEED %d errs=%d hash=%d sig=%s%s", seed, #ERRORS, h, table.concat(uniq, "+"), rt))
end
local keys = {}
for k in pairs(seen) do keys[#keys + 1] = k end
table.sort(keys, function(a, b) return seen[a] > seen[b] end)
print("distinct error signatures:", #keys)
for _, k in ipairs(keys) do print(string.format("%5d  %s", seen[k], k:sub(1, 230))) end
