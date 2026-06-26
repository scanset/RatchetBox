#!/usr/bin/env bash
# register_file.sh - record a composed unit in the module's PROJECT.md (a changelog line, idempotent).
# Best-effort: always exits 0 (the unit already built; bookkeeping must not fail the chain). Args:
# proj path role.
set -u
proj="${1:?usage: register_file <proj> <path> <role>}"
path="${2:?missing path}"
role="${3:-unit}"
root="workspaces/$proj"; [ -d "$root" ] || root="$proj"
[ -d "$root" ] || { echo "(no such workspace: $proj)"; exit 0; }
line="- \`$path\` ($role)"
grep -qF "$line" "$root/PROJECT.md" 2>/dev/null || printf '%s\n' "$line" >> "$root/PROJECT.md"
echo "registered $path"
exit 0
