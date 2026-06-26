#!/usr/bin/env bash
# module_check.sh - the whole-module FINAL oracle for compose: go build ./... then go test ./... over the
# entire module. Exit 0 iff both pass. This is where behavior (not just compilation) of the composed
# system is verified. Arg: proj (workspace name).
set -u
proj="${1:?usage: module_check <proj>}"
root="workspaces/$proj"; [ -d "$root" ] || root="$proj"
[ -d "$root" ] || { echo "no such workspace: $proj"; exit 1; }
cd "$root" || { echo "cannot enter $root"; exit 1; }

b="$(GOFLAGS=-mod=mod go build ./... 2>&1)"; bs=$?
if [ "$bs" -ne 0 ]; then echo "MODULE BUILD FAILED:"; printf '%s\n' "$b"; exit 1; fi

t="$(GOFLAGS=-mod=mod go test ./... 2>&1)"; ts=$?
if [ "$ts" -ne 0 ]; then echo "MODULE TEST FAILED:"; printf '%s\n' "$t"; exit 1; fi

echo "OK: module builds and tests pass with $(go version | awk '{print $3}')"
printf '%s\n' "$t"
exit 0
