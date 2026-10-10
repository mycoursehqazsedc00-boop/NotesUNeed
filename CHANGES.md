# Notes'U'Need 3.23 – changes

## Added
- `NuNBackup.lua` (new file, loaded from the XML): crash-safe backup/restore using SuperWoW `ExportFile`/`ImportFile` or VanillaHelpers `WriteFile`/`ReadFile`. Commands `/nun -backup [name]`, `/nun -restore [name] [replace]`, `/nun -backup auto on|off`, `/nun -backup status|help`. Automatic backup every 15 minutes, only when data changed, deferred during combat, serialised ~100 entries per frame. Every write is read back and compared. Restore is sandboxed (`setfenv` with an empty environment, structure and type validation, depth limit, header check), `replace` saves the current notes first and refuses an empty backup. File names are restricted to letters, digits, `_` and `-`.
- One new help line (English + German). Display version 3.23.

## Fixed
- `NuN_Transmit` crashed after creating a log note when no recipient was chosen; it now returns before doing anything.

## Changed in the main file
- 2 small edits to `NotesUNeed.lua`: a `-backup`/`-restore` command branch and the transmit guard. Everything else in 3.23 is the new file.

## Client mod evaluation
| Candidate | Decision |
|---|---|
| SuperWoW / VanillaHelpers file APIs | Used (backup) |
| ClassicAPI `hooksecurefunc` | Not used: several NuN hooks intercept before the original and could change behaviour |
| ClassicAPI `OnTooltipSet*` | Not used: NuN's child-frame-of-GameTooltip mechanism works; no verified gain |
| ClassicAPI `C_FriendList`, `C_Item`, GUID APIs | Nothing a notes manager needs |
| Nampower, UnitXP_SP3, WeirdUtils | Not relevant |

## Verification (3.23)
- 59 scenarios pass (22 new: backup/restore, hostile files, automatic backup timing, transmit guard); the 36 scenarios shared with 3.22 are byte-identical apart from the extra help line.
- 200 sessions with no file mod: final saved data identical to 3.22 in all 200, 0 errors.
- 200 sessions each with the SuperWoW and VanillaHelpers APIs and random backup/restore commands: 0 errors; backup, wipe, restore returned identical data in 400/400.
- Module limits: max 8 upvalues per closure (Lua 5.0 limit 32), 35 file-level locals, idle per-frame cost 0.08 us, none without a file mod.

# Notes'U'Need 3.22 – changes

All changes are small, local fixes (43 changed lines in `NotesUNeed.lua`, one added helper function `NuN_PlainFind`, plus two new localisation strings).

## Fixed
| Where | Problem | Fix |
|---|---|---|
| Search window (3 places) | The typed text was used as a Lua pattern: `(`, `[`, trailing `%` raised errors; `.`/`-` matched wrongly | Literal, case-insensitive match (`NuN_PlainFind`) |
| Quest note updates (4 places) + map note name check | Quest text / names used as patterns: errors on unbalanced `(` `[`, hyphens and parentheses silently failed to match | Literal match (`string.find(..., 1, true)`) |
| `/nun -ca`, `/nun -ch` | No name given: `string.sub(nil)` error | Usage message (`NUN_CMD_NEEDS_NAME`, EN + DE) |
| Pinned tooltip Edit button | `NUN_TT_PIN_EDIT_TXT3` was never defined, `AddLine(nil)` errored | String defined (EN + DE) and call guarded |
| `NuN_NPCInfo` | `string.find(nil, ...)` ran before the nil check | Nil check first |
| `NuN_OpenChat`, delete dialog | Errors when opened with no note selected | Nil-safe |

## Behaviour change
- Text search is now case-insensitive and literal.

## Not changed (investigated, not bugs)
- `string.find(text, ")")` in the tooltip colouring code is a plain-text search in Lua (a lone `)` is not a pattern special), so it works as intended.
- Tooltip length option boxes are digits-only in the real UI.

## Verification
- 36 scenarios: original 28 pass / 8 fail; 3.22 36 pass.
- 28 scenarios passing on both produce identical results and identical saved-data dumps.
- 200 random sessions x 250 actions, fresh process each: original errors in 187 sessions (254 hits at 5 sites); 3.22 has 0 errors.
- 134 sessions where the original hit no state-changing bug: final saved data identical in all 134.
- Engine limits unchanged: 61 file-level locals (limit 200).
