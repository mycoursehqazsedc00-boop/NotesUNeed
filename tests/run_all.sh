#!/bin/bash
# Runs the Notes'U'Need test kit against the addon in the parent folder.
# Needs: python3 and a Lua 5.3+ interpreter (texlua, lua5.3, lua5.4). Override with  LUA=lua5.4 ./run_all.sh
# Optional: SEEDS=100 STEPS=250 to size the random-session fuzz.
HERE=$(cd "$(dirname "$0")" && pwd); ADDON=$(dirname "$HERE")
LUA=${LUA:-$(command -v texlua || command -v lua5.4 || command -v lua5.3 || command -v lua)}
SEEDS=${SEEDS:-60}; STEPS=${STEPS:-250}
TMP=$(mktemp -d); trap 'rm -rf "$TMP"' EXIT
python3 "$HERE/build_env.py" "$ADDON" "$TMP" >/dev/null || { echo "build failed"; exit 2; }
echo "== literal-pattern check"; (cd "$ADDON" && python3 "$HERE/patcheck.py" NotesUNeed.lua NuNBackup.lua Localisation.lua Localisation.de.lua)
echo "== scenarios"; fail=0; total=0
for s in $(cat "$HERE/scenarios.txt"); do
  total=$((total+1)); out=$("$LUA" "$HERE/nunrun.lua" "$TMP" "$s" 2>&1 | grep -E "^RESULT" | head -1)
  case "$out" in *"|PASS|"*) ;; *) fail=$((fail+1)); echo "FAIL $s: ${out:0:300}";; esac
done
echo "scenarios: $total run, $fail failed"
bad=0
for api in none superwow vanilla; do
  echo "== random sessions, file API: $api ($SEEDS seeds x $STEPS actions, fresh process per seed)"
  errs=0; rtbad=0
  for s in $(seq 1 "$SEEDS"); do
    if [ "$api" = none ]; then line=$("$LUA" "$HERE/nunfuzz.lua" "$TMP" "$s" "$s" "$STEPS" 2>&1 | grep "^SEED")
    else line=$(BACKUP=$api "$LUA" "$HERE/nunfuzz.lua" "$TMP" "$s" "$s" "$STEPS" 2>&1 | grep "^SEED"); fi
    e=$(echo "$line" | sed -n 's/.*errs=\([0-9]*\).*/\1/p')
    [ "${e:-1}" != "0" ] && { errs=$((errs+1)); echo "seed $s: $line"; }
    if [ "$api" != none ]; then case "$line" in *"rt=ok"*) ;; *) rtbad=$((rtbad+1)); echo "seed $s: backup/restore roundtrip mismatch: $line";; esac; fi
  done
  echo "sessions with errors: $errs of $SEEDS$([ "$api" != none ] && echo " | roundtrip failures: $rtbad")"
  bad=$((bad+errs+rtbad))
done
[ $fail -eq 0 ] && [ $bad -eq 0 ] && echo "ALL GOOD" || { echo "PROBLEMS FOUND"; exit 1; }
