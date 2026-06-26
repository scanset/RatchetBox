#!/usr/bin/env bash
# stage_build.sh - the compose per-unit oracle: write a generated Go file into a module workspace and
# type-check the WHOLE module with `go vet ./...`. Exit 0 iff the whole module type-checks (and is
# vet-clean), so a unit that breaks an earlier one is caught here. We use `go vet`, not `go build`,
# because every unit shares `package main` and the entry (func main) is generated LAST - `go build`
# would link-fail ("function main is undeclared") on every intermediate unit, while `go vet` compiles
# and type-checks without linking. The final whole-module `go build` + `go test` is module_check.
# Args: proj path; the Go source on stdin.
set -u
proj="${1:?usage: stage_build <proj> <path> (code on stdin)}"
path="${2:?missing path}"
root="workspaces/$proj"; [ -d "$root" ] || root="$proj"
[ -d "$root" ] || { echo "no such workspace: $proj"; exit 1; }
case "$path" in /*|*..*) echo "unsafe path: $path"; exit 1;; esac

code="$(cat)"
# Drop any markdown fence lines the model may emit (never valid Go).
code="$(printf '%s\n' "$code" | sed '/^[[:space:]]*```/d')"

mkdir -p "$(dirname "$root/$path")"
printf '%s\n' "$code" > "$root/$path"
gofmt -w "$root/$path" 2>/dev/null

out="$(cd "$root" && GOFLAGS=-mod=mod go vet ./... 2>&1)"
status=$?
if [ "$status" -eq 0 ]; then
  echo "OK: staged $path; whole module type-checks (go vet clean)"
else
  printf 'BUILD FAILED after staging %s:\n%s\n' "$path" "$out"
fi
exit "$status"
