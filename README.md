# Notes'U'Need (NuN)

A notes manager for WoW 1.12 / Turtle WoW. Keep notes on friends, ignores, guild members, other players, quests, items and anything else, and see them in tooltips.

Originally created by Telic of Dragonblight; this repository continues the abandoned project.

**Current version: 3.23**

## Client Mods Used

The notes manager itself uses only the stock 1.12 API and needs no client mod. Only the backup feature uses one, and it is optional:

| Client Mod | Purpose in this addon | Required? |
|---|---|---|
| [SuperWoW](https://github.com/balakethelock/SuperWoW) | `ExportFile` / `ImportFile`: crash-safe backup files (`.txt` in `<WoW folder>\imports`) | Optional |
| [VanillaHelpers](https://github.com/isfir/VanillaHelpers) | `WriteFile` / `ReadFile`: fallback backup backend if SuperWoW is not present | Optional |

Without either mod, nothing changes and no extra work is done.

## Features

- **Contact notes** for players: target someone and use `/nun -t`. Stores faction, race (including Turtle WoW **Goblin** and **High Elf**), class, sex, guild, professions, PvP rank and free text.
- **Cross-faction aware**: detects target and party member factions via `UnitFactionGroup` rather than assuming same-faction from `UnitIsFriend`.
- **General notes** with a title, for quests, items, NPCs or anything else. Stored per realm or account-wide.
- **Tooltips**: your notes appear in the game tooltip when you mouse over the player, item or quest. Tooltips can be pinned.
- **Search window**: find notes by class, profession, faction or free text.
- **Friends, ignore, guild and who lists**: note buttons next to the entries.
- **Quest tracking**: optional automatic quest notes and a quest history per character.
- **Map notes integration** with MapNotes / MetaMapNotes when installed.
- **Backup and restore** (optional, needs SuperWoW or VanillaHelpers): automatic crash-safe backups, manual backups, restore, and transferring notes to another account or PC.
- English and German localisation.

## Commands

| Command | Action |
|---|---|
| `/nun` | Open or close the options window |
| `/nun -h` | Show the help text |
| `/nun -a` | Browse all contact and general notes |
| `/nun <name>` | Show the saved contact note, or the general note of that name |
| `/nun -t` | Create a contact note for your target (player characters) |
| `/nun -g <title>` | Create or show a general note |
| `/nun -ca <name>` / `/nun -ch <name>` | Create an Alliance / Horde contact note without a target |
| `/nun -tt` | Toggle NuN tooltips |
| `/nun -micro` | Toggle the micro buttons |
| `/nun ->de` / `->en` | Switch language |
| `/nun -backup [name]` | Save all notes to a file now |
| `/nun -restore [name]` | Add notes from a backup; existing notes are kept |
| `/nun -restore [name] replace` | Replace all notes with the backup (your current notes are saved first) |
| `/nun -backup auto on\|off` | Automatic backup every 15 minutes |
| `/nun -backup status` / `help` | Show backup state / list the backup commands |

## What Was Added / Improved / Fixed

### Recent fixes (Turtle WoW & 1.12.1)
- **Turtle WoW races**: added **Goblin** (Horde) and **High Elf** / **Hochelf** (Alliance) to `NUN_HRACES` / `NUN_ARACES` and `toDeutschAR` without shifting existing saved race indices (`1..4`).
- **Cross-faction realm support**: `NuN_NewContact`, `NuN_Target`, party auto-notes, and `NuN_Transmit` now use `UnitFactionGroup` and the contact's own saved `.faction` instead of `UnitIsFriend` or the player's faction.
- **WoW 1.12.1 `UnitSex` fix**: `NuN_Target` and `NuN_AutoNote` now map `UnitSex` (`2` = Male, `3` = Female) properly instead of treating every target as Female or saving out-of-bounds indices (`3`/`4`).
- **Tooltip & UI fixes**: quoted `"ANCHOR_BOTTOMRIGHT"` in `NuN_TTCheckBox_OnClick`, added `"ANCHOR_RIGHT"` in `NuN_bHaveTTCheckBox_OnEnter`, nil-guarded `gtName` in `NuN_GameTooltip_OnShow`, and prevented `NuN_Target` from clearing the current target when already targeting/mousing over the contact.
- **Transmit & MapNotes fixes**: nil-guarded lookup fields in `NuN_Transmit`, and fixed `NuN_UpdateMapNotesIndex` so empty map-pin tables are cleaned up after deleting the last note.

### 3.23: backup and restore
- New file `NuNBackup.lua`: crash-safe backup and restore of all notes. WoW only writes addon data on a clean logout or `/reload`, so a game crash used to lose every note made that session.
- Automatic backup every 15 minutes: only when something changed, skipped during combat, and spread over many frames so it cannot cause a hitch.
- Every backup is read back and verified, so a failed or truncated write is reported.
- Restore rejects damaged, foreign or hostile files without running any code from them. `replace` saves your current notes first and refuses to restore an empty backup.
- Fixed a Lua error when pressing **Send** in the chat/transmit window with no recipient chosen.

### 3.22: bug fixes
- **Search window**: typing `(`, `[`, `%` and similar characters no longer causes a Lua error, and `.` and `-` are no longer treated as wildcards. Search is now case-insensitive.
- **Quest notes**: quest text containing `(`, `[`, `%` or `-` no longer causes errors or missed matches.
- `/nun -ca` and `/nun -ch` without a name show a usage message instead of a Lua error.
- Hovering the pinned tooltip's **Edit Note** button no longer errors (its third text line was never defined).
- Creating a note for an NPC whose tooltip has no second line no longer errors.
- The Chat and Delete dialogs no longer error when opened with no note selected.

Your saved notes and settings are untouched by these updates; the saved-data format did not change.

## Credits

Original author: Telic of Dragonblight (EU). Turtle WoW updates by contributors.
