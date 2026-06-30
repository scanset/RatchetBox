#!/usr/bin/env bash
# code_index.sh - build a COMPACT BM25/embedding corpus from the IN-CODE keyword tags (// file-kw: and
# // kw:) that the model + code_tags stamp into the Go files. One small record per file (coarse index) and
# per tagged symbol (fine): its keywords + signature + file:symbol location - NOT the full source. The tags
# in the code ARE the index; this just projects them into the searchable form the engine already indexes.
# Output: workspaces/<proj>/.codeindex/. STDOUT is ONLY the relative index path (for a flow to bind).
set -u
proj="${1:?usage: code_index <proj>}"; proj="${proj%% *}"
root="workspaces/$proj"; [ -d "$root" ] || root="$proj"
[ -d "$root" ] || { echo "(no such workspace: $proj)" >&2; exit 1; }
out="$root/.codeindex"; rm -rf "$out"; mkdir -p "$out"

ROOT="$root" OUT="$out" python3 - <<'PY'
import os, re, glob, sys
root = os.environ["ROOT"]; out = os.environ["OUT"]
sym_re  = re.compile(r'^(func (?:\([^)]*\) )?[A-Za-z_][A-Za-z0-9_]*|type [A-Za-z_][A-Za-z0-9_]*)')
name_re = re.compile(r'^(?:func (?:\([^)]*\) )?|type )([A-Za-z_][A-Za-z0-9_]*)')
n = 0
for f in sorted(glob.glob(os.path.join(root, "**", "*.go"), recursive=True)):
    if f.endswith("_test.go") or os.sep + ".codeindex" + os.sep in f:
        continue
    base = os.path.basename(f)[:-3]
    lines = open(f).read().split("\n")

    filekw = ""
    for ln in lines:
        if ln.lstrip().startswith("// file-kw:"):
            filekw = ln.split("file-kw:", 1)[1].strip(); break

    # file-level record (coarse: the file index)
    if filekw:
        open(os.path.join(out, f"{base}.md"), "w").write(
            f"# {base} (file)\n\nKeywords: {base} {filekw}\n")
        n += 1

    # per-symbol records (fine: find specific pieces). Each carries its // kw: tag + the file's keywords
    # (so a symbol inherits its file's domain) + the signature line.
    pend = ""
    for ln in lines:
        s = ln.lstrip()
        if s.startswith("// kw:"):
            pend = s.split("kw:", 1)[1].strip(); continue
        m = sym_re.match(ln)
        if m:
            nm = name_re.match(ln)
            sym = nm.group(1) if nm else base
            kw = pend or sym
            safe = re.sub(r'[^A-Za-z0-9_]', '_', sym)
            open(os.path.join(out, f"{base}.{safe}.md"), "w").write(
                f"# {sym} ({base})\n\nKeywords: {sym} {kw} {filekw}\n\n```go\n{m.group(1)}\n```\n")
            n += 1
            pend = ""
        elif ln.strip() and not s.startswith("//"):
            pend = ""   # a non-comment, non-symbol line clears a dangling tag
# No stdout/stderr here: the tool runner appends any stderr to the captured output, which would pollute
# the relative-path value a flow binds as the search target. Keep both streams clean until the path below.
PY

printf 'workspaces/%s/.codeindex\n' "$(basename "$root")"
exit 0
