#!/usr/bin/env bash
# module_api.sh - print the existing API surface of a composed module: every top-level type/func and
# every method declaration in the module's .go files, labeled by file. This is the authoritative list of
# names a new unit must call VERBATIM (Go gives it for free - no parser needed). Arg: proj (workspace
# name). Always exits 0 (grounding, not an oracle).
set -u
proj="${1:?usage: module_api <proj>}"
root="workspaces/$proj"; [ -d "$root" ] || root="$proj"
[ -d "$root" ] || { echo "(no such workspace: $proj)"; exit 0; }
n=0
while IFS= read -r f; do
  [ -e "$f" ] || continue
  sigs="$(grep -nE '^(type |func )' "$f" 2>/dev/null)"
  [ -z "$sigs" ] && continue
  printf '## %s\n%s\n\n' "${f#"$root"/}" "$sigs"
  n=$((n + 1))
done < <(find "$root" -name '*.go' -not -name '*_test.go' | sort)
[ "$n" -eq 0 ] && echo "(no Go units yet - this is the first unit)"
exit 0
