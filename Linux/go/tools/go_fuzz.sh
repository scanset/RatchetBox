#!/usr/bin/env bash
# go_fuzz.sh - the PROPERTY/FUZZ rung. Runs every native fuzz target (FuzzXxx) in the module for a bounded
# time to shake out edge-case bugs the example tests miss (the "green-on-exercised-paths != correct" gap).
# Exit 1 if any target finds a crash; 0 if all are clean OR there are no fuzz targets (nothing to do).
# Arg: proj (workspace). Env: FUZZTIME (default 5s per target).
set -u
proj="${1:?usage: go_fuzz <proj>}"
root="workspaces/$proj"; [ -d "$root" ] || root="$proj"
[ -d "$root" ] || { echo "no such workspace: $proj"; exit 1; }
cd "$root" || exit 1
ft="${FUZZTIME:-5s}"

targets="$(grep -rhoE 'func +Fuzz[A-Za-z0-9_]+' --include='*_test.go' . 2>/dev/null | awk '{print $2}' | sort -u)"
[ -z "$targets" ] && { echo "no fuzz targets (FuzzXxx) in the module; skipping the fuzz rung"; exit 0; }

fail=0
for t in $targets; do
  echo "== fuzz $t for $ft =="
  if ! go test -run '^$' -fuzz="^${t}\$" -fuzztime="$ft" ./... >"/tmp/gofuzz.$$.out" 2>&1; then
    echo "FUZZ FAILURE in $t (a property was violated on a generated input):"
    tail -20 "/tmp/gofuzz.$$.out" | sed 's/^/  /'
    fail=1
  fi
  rm -f "/tmp/gofuzz.$$.out"
done
[ $fail -eq 0 ] && echo "fuzz: all targets clean (${ft} each)"
exit $fail
