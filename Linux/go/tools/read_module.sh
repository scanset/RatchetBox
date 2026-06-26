#!/usr/bin/env bash
# read_module.sh - show a composed module's state for grounding: PROJECT.md, go.mod, and the .go file
# tree. Arg: proj (workspace name). Always exits 0.
set -u
proj="${1:?usage: read_module <proj>}"
root="workspaces/$proj"; [ -d "$root" ] || root="$proj"
[ -d "$root" ] || { echo "(no such workspace: $proj)"; exit 0; }
[ -f "$root/PROJECT.md" ] && { echo "=== PROJECT.md ==="; cat "$root/PROJECT.md"; echo; }
[ -f "$root/go.mod" ] && { echo "=== go.mod ==="; cat "$root/go.mod"; echo; }
echo "=== .go files ==="; (cd "$root" && find . -name '*.go' | sort)
exit 0
