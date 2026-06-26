#!/usr/bin/env bash
# new_module.sh - scaffold a Go module workspace for composition: workspaces/<name>/{go.mod, PROJECT.md,
# specs/}. Every composed unit lives in ONE `package main` at the module root (same package, no
# cross-imports - the Go analog of the C# "everything in namespace App" model), so go build ./... and
# go test ./... cover the whole system. Arg: name. Run via /do new_module <name>.
set -u
name="${1:?usage: new_module <name>}"
name="${name%% *}"   # ignore any trailing words (e.g. a console|lib hint)
root="workspaces/$name"
mkdir -p "$root/specs"
[ -f "$root/go.mod" ] || printf 'module %s\n\ngo 1.21\n' "$name" > "$root/go.mod"
[ -f "$root/PROJECT.md" ] || printf '# %s\n\nA composed Go module. Every unit is a file in `package main` at the module root.\n\n## Units\n' "$name" > "$root/PROJECT.md"
echo "scaffolded $root (module $name). Drop .spec files in $root/specs, then: ratchet flow . compose --ws $name \"\""
