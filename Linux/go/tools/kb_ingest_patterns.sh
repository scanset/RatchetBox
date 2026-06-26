#!/usr/bin/env bash
# kb_ingest_patterns.sh - ingest a Go design-patterns repo (Category/Pattern/{*.go, README.md}) into a
# kb library, one markdown per pattern: an English title + descriptor (so the routing summary is
# English) followed by the compiling Go source fenced as ```go (the indexer pulls keywords from the
# fenced code, as the cpp patterns library does). The source READMEs are deliberately NOT included:
# they are non-English here, which pollutes the retrieval context - the Go code is the grounding value
# and keeps context injection English-only and consistent. Deterministic, no model.
# The Go analog of cpp's `ingest-md.ps1 -Mode patterns`.
#
# Run from the ratchet root:  tools/kb_ingest_patterns.sh <src-repo> [out-dir]   (default out: kb/patterns)
# Then index it:              ratchet index kb/patterns
set -u

SRC="${1:?usage: kb_ingest_patterns.sh <src-repo> [out-dir]}"
OUT="${2:-kb/patterns}"
[ -d "$SRC" ] || { echo "no such source dir: $SRC"; exit 1; }
mkdir -p "$OUT"

n=0
for cat_dir in "$SRC"/*/; do
  [ -d "$cat_dir" ] || continue
  category="$(basename "$cat_dir")"
  for pat_dir in "$cat_dir"*/; do
    [ -d "$pat_dir" ] || continue
    pattern="$(basename "$pat_dir")"
    # Need at least one .go file (the example). Skip category index dirs with none.
    ls "$pat_dir"*.go >/dev/null 2>&1 || continue
    cat_lc="$(printf '%s' "$category" | tr '[:upper:]' '[:lower:]')"
    slug="$(printf '%s_%s' "$category" "$pattern" | tr '[:upper:]' '[:lower:]' | tr -cs 'a-z0-9' '_' | sed 's/^_//; s/_$//')"
    out_file="$OUT/$slug.md"
    {
      printf '# %s (%s Go design pattern)\n\n' "$pattern" "$category"
      printf '%s is a %s design pattern. Idiomatic Go implementation with a runnable example below.\n\n' "$pattern" "$cat_lc"
      # Implementation files first, then *_test.go (the runnable Example), for readable ordering.
      for gf in "$pat_dir"*.go; do
        case "$gf" in *_test.go) continue;; esac
        [ -e "$gf" ] || continue
        printf '## %s\n\n```go\n' "$(basename "$gf")"
        cat "$gf"
        printf '\n```\n\n'
      done
      for gf in "$pat_dir"*_test.go; do
        [ -e "$gf" ] || continue
        printf '## %s (runnable example)\n\n```go\n' "$(basename "$gf")"
        cat "$gf"
        printf '\n```\n\n'
      done
      # Source READMEs are intentionally omitted: they are non-English in this repo and would pollute
      # the retrieval context. The Go code carries the grounding value; injection stays English-only.
    } > "$out_file"
    n=$((n + 1))
  done
done

echo "patterns: wrote $n entries to $OUT"
