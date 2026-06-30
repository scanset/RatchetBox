#!/usr/bin/env bash
# spec_changeset.sh - human-readable view of a layer increment: what an evolve pass from <from> to <to>
# will add, change, and remove, plus a unified diff of each changed spec. This is the "release notes"
# for a layer - the migration-style changeset DERIVED from the two full snapshots (it never drifts from
# them because it is computed, not authored). Read-only; not part of the evolve flow.
# Args: proj, layers ("<from> <to>", e.g. "L0 L1").  Usage: /do spec_changeset dispatch "L0 L1"
set -u
proj="${1:?usage: spec_changeset <proj> \"<from> <to>\"}"
layers="${2:?usage: spec_changeset <proj> \"<from> <to>\"}"
root="workspaces/$proj"; [ -d "$root" ] || root="$proj"
[ -d "$root" ] || { echo "no such workspace: $proj"; exit 1; }
set -- $layers; frm="${1:-}"; to="${2:-}"
[ -n "$frm" ] && [ -n "$to" ] || { echo "layers must be \"<from> <to>\""; exit 1; }
fd="$root/spec/$frm"; td="$root/spec/$to"
[ -d "$td" ] || { echo "no such layer dir: $td"; exit 1; }

list() { [ -d "$1" ] && (cd "$1" && ls *.spec 2>/dev/null) || true; }
F="$(list "$fd")"; T="$(list "$td")"

echo "# changeset $frm -> $to  ($proj)"
echo
echo "## added"
comm -13 <(printf '%s\n' $F | sort) <(printf '%s\n' $T | sort) | sed 's/^/  + /' | grep . || echo "  (none)"
echo "## removed"
comm -23 <(printf '%s\n' $F | sort) <(printf '%s\n' $T | sort) | sed 's/^/  - /' | grep . || echo "  (none)"
echo "## changed"
ch=""
for f in $(comm -12 <(printf '%s\n' $F | sort) <(printf '%s\n' $T | sort)); do
  if ! cmp -s "$fd/$f" "$td/$f"; then echo "  ~ $f"; ch="$ch $f"; fi
done
[ -n "$ch" ] || echo "  (none)"

if [ -n "$ch" ]; then
  echo
  echo "## diffs"
  for f in $ch; do
    echo "### $f"
    diff -u "$fd/$f" "$td/$f" | sed '1,2d' || true
    echo
  done
fi
exit 0
