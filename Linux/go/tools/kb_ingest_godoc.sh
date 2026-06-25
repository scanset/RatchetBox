#!/usr/bin/env bash
# kb_ingest_godoc.sh - ingest the Go standard library reference into a kb library, one markdown file
# per package, generated OFFLINE from the installed toolchain via `go doc -all`. Deterministic, no
# model, no network. This is the Go analog of the cpp ratchet's cppref ingest - except `go doc`
# produces the reference locally, so there is nothing to scrape and it always matches your toolchain.
#
# Run from the ratchet root:  tools/kb_ingest_godoc.sh [out-dir]   (default: kb/stdlib)
# Then index it:              ratchet index kb/stdlib
set -u

OUT="${1:-kb/stdlib}"

if ! command -v go >/dev/null 2>&1; then
  echo "go not found on PATH (install Go / check PATH)"; exit 1
fi

mkdir -p "$OUT"

# Every stdlib package except internal/ and vendored ones (not import-able by user code).
pkgs="$(go list std 2>/dev/null | grep -vE '(^|/)internal(/|$)|(^|/)vendor(/|$)')"
[ -z "$pkgs" ] && { echo "go list std returned nothing"; exit 1; }

n=0
ver="$(go version | awk '{print $3}')"
for p in $pkgs; do
  doc="$(go doc -all "$p" 2>/dev/null)" || continue
  [ -z "$doc" ] && continue
  slug="$(printf '%s' "$p" | tr '/' '_')"
  # Synopsis: first non-empty line at/after the package-comment (skips the `package X // import` line).
  syn="$(go doc "$p" 2>/dev/null | awk 'NR>=3 && NF{print; exit}')"
  {
    printf '# %s (Go standard library)\n\n' "$p"
    [ -n "$syn" ] && printf '%s\n\n' "$syn"
    printf 'Import path: %s   Toolchain: %s\n\n' "$p" "$ver"
    printf '%s\n' "$doc"
  } > "$OUT/$slug.md"
  n=$((n + 1))
done

echo "stdlib: wrote $n package reference files to $OUT ($ver)"
