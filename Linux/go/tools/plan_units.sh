#!/usr/bin/env bash
# plan_units.sh - turn a compose build-plan JSON (on stdin) into the foreach worklist: one line per unit
# in dependency order, "<targetpath> <specfile>". The entry unit (role behavior/gui) -> main.go; a test
# unit (role test, or a name containing "test") -> <base>_test.go (so `go test ./...` runs it); every
# other unit -> <name>.go at the module root (all units share package main, no subpackages/imports).
# NOTE: uses `python3 -c` (not a heredoc) so the piped plan JSON stays on stdin.
set -u
python3 -c '
import sys, json, re
try:
    plan = json.load(sys.stdin)
except Exception as e:
    sys.stderr.write("plan_units: invalid plan JSON: %s\n" % e); sys.exit(1)
units = plan.get("units") or []
if not units:
    sys.stderr.write("plan_units: no units in plan\n"); sys.exit(1)
def slug(s):
    s = (s or "unit").lower().replace("-", "_").replace(" ", "_")
    s = re.sub(r"[^a-z0-9_]", "", s)
    return s or "unit"
seen_entry = False
for u in units:
    name = u.get("name", "unit")
    role = (u.get("role") or "").lower()
    spec = u.get("spec", "")
    s = slug(name)
    if role in ("behavior", "gui") and not seen_entry:
        target, seen_entry = "main.go", True
    elif role == "test" or "test" in s:
        base = re.sub(r"_*test$", "", s) or "unit"
        target = base + "_test.go"
    else:
        target = s + ".go"
    print(target, spec)
'
