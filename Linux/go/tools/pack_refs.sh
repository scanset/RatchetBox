#!/usr/bin/env bash
# pack_refs.sh - assemble the route flow's retrieved grounding into a clean context pack. Reads sections
# marked "<<<kbname>>>" each followed by that KB's hits (on stdin) and emits "## kbname\n<hits>" for
# every section that has BOTH a name and non-blank hits - dropping the empties left when the planner
# picked fewer than the 3 retrieval slots. This is the OUTPUT of route: a verified, grounded context.
# NOTE: capture stdin via `cat` in bash and pass through env - `python3 - <<'PY'` makes the heredoc
# Python's stdin, so an in-script sys.stdin.read() would see nothing (the route_score.sh pattern).
set -u
PACK="$(cat)" python3 - <<'PY'
import os, re
parts = re.split(r'(?m)^<<<(.*)>>>$', os.environ.get("PACK", ""))  # [pre, name1, body1, ...]
out = []
for i in range(1, len(parts), 2):
    name = parts[i].strip()
    body = parts[i + 1].strip() if i + 1 < len(parts) else ""
    if name and body:
        out.append(f"## {name}\n{body}")
print("\n\n".join(out) if out else "(no grounding retrieved)")
PY
