#!/usr/bin/env bash
# read_specs.sh - print every .spec in a directory (or one .spec file) labeled by filename, for compose's
# plan step and add_unit's per-unit read. Arg: dir-or-file. A workspace-relative path (e.g.
# "<ws>/specs") is resolved under workspaces/ if not found as given.
set -u
target="${1:?usage: read_specs <dir-or-file>}"
[ -e "$target" ] || { [ -e "workspaces/$target" ] && target="workspaces/$target"; }
emit() { printf '===== %s =====\n' "$(basename "$1")"; cat "$1"; printf '\n\n'; }
if [ -f "$target" ]; then
  emit "$target"
elif [ -d "$target" ]; then
  found=0
  for f in "$target"/*.spec; do [ -e "$f" ] || continue; emit "$f"; found=1; done
  [ "$found" -eq 0 ] && { echo "no .spec files in $target"; exit 1; }
else
  echo "no such spec path: $target"; exit 1
fi
exit 0
