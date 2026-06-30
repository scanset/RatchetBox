#!/usr/bin/env bash
# sync_layer.sh - "check out" a spec layer: copy the FULL snapshot workspaces/<proj>/spec/<layer>/*.spec
# into the working set workspaces/<proj>/specs/ (cleared first), so the deterministic compose/add_unit
# path - which always reads specs/<file> - sees exactly the target layer's intent. The spec/<layer>/
# dirs are the source of truth (coherent, full system at each layer); specs/ is the currently-applied
# checkout. Used both to bootstrap L0 (then run compose) and inside evolve before the foreach.
# Args: proj, layers ("<from> <to>" - only <to> is used; accepts a bare "<layer>" too).
set -u
proj="${1:?usage: sync_layer <proj> \"<layer>\" | \"<from> <to>\"}"
layers="${2:?usage: sync_layer <proj> \"<layer>\" | \"<from> <to>\"}"
root="workspaces/$proj"; [ -d "$root" ] || root="$proj"
[ -d "$root" ] || { echo "no such workspace: $proj"; exit 1; }

# take the LAST token as the target layer (so "L0 L1" -> L1, "L0" -> L0)
set -- $layers; to="${!#}"
src="$root/spec/$to"
[ -d "$src" ] || { echo "no such layer dir: $src"; exit 1; }

dst="$root/specs"
mkdir -p "$dst"
rm -f "$dst"/*.spec 2>/dev/null
n=0
for f in "$src"/*.spec; do
  [ -e "$f" ] || continue
  cp -f "$f" "$dst/"; n=$((n+1))
done
[ "$n" -gt 0 ] || { echo "no .spec files in $src"; exit 1; }
echo "synced layer $to: $n spec(s) -> $dst"
exit 0
