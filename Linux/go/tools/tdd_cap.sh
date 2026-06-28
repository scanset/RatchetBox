#!/usr/bin/env bash
# tdd_cap.sh - bound a tdd repair cycle so an unsatisfiable gate fails fast instead of spinning.
#   tdd_cap <proj> <name> <max>  increments a per-cycle counter (.tdd/<name> in the workspace) and exits
#                                0 while count <= max (keep looping) or 1 once it exceeds max (give up).
#   tdd_cap <proj> reset         clears all counters at the start of a run.
set -u
proj="${1:?usage: tdd_cap <proj> <name> <max> | tdd_cap <proj> reset}"
root="workspaces/$proj"; [ -d "$root" ] || root="$proj"
[ -d "$root" ] || { echo "no such workspace: $proj"; exit 1; }
dir="$root/.tdd"
name="${2:?usage: tdd_cap <proj> <name> <max> | tdd_cap <proj> reset}"
if [ "$name" = "reset" ]; then rm -rf "$dir"; echo "tdd: repair counters reset"; exit 0; fi
max="${3:?usage: tdd_cap <proj> <name> <max>}"
mkdir -p "$dir"; f="$dir/$name"
n=0; [ -f "$f" ] && n="$(cat "$f" 2>/dev/null || echo 0)"
n=$((n + 1)); echo "$n" > "$f"
if [ "$n" -gt "$max" ]; then
  echo "tdd: '$name' repair cycle exhausted ($n > $max attempts) - giving up"; exit 1
fi
echo "tdd: '$name' repair attempt $n/$max - retrying"; exit 0
