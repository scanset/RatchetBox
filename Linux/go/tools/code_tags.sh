#!/usr/bin/env bash
# code_tags.sh - stamp DETERMINISTIC keyword tags INTO a workspace's Go files (the fallback half of the
# hybrid scheme: the model writes richer tags during generation; this back-fills any it omitted, and tags
# pre-existing code). Two levels, low-volume at each:
#   - per-file:   `// file-kw: <words>`  right after `package ...`  (the file's index line)
#   - per-symbol: `// kw: <words>`       directly above each top-level func/type  (find specific pieces)
# Keywords are derived from the matching spec's intent + camelCase/underscore-split identifiers. Idempotent:
# a file/symbol that already carries its tag is left untouched, so model-authored tags always win.
# Args: proj (workspace) [file.go ...]  - no files = every non-test .go in the workspace.
set -u
proj="${1:?usage: code_tags <proj> [file.go ...]}"; shift || true
proj="${proj%% *}"
root="workspaces/$proj"; [ -d "$root" ] || root="$proj"
[ -d "$root" ] || { echo "(no such workspace: $proj)" >&2; exit 1; }

if [ "$#" -gt 0 ]; then
  files=(); for p in "$@"; do files+=("$root/$p"); done
else
  mapfile -t files < <(find -L "$root" -name '*.go' -not -name '*_test.go' -not -path '*/.codeindex/*' | sort)
fi

stamped=0
for f in "${files[@]}"; do
  [ -e "$f" ] || continue
  case "$f" in *_test.go) continue ;; esac   # tests are not part of the searchable surface

  SPECDIR="$root/specs" UNIT="$(basename "$f" .go)" python3 - "$f" <<'PY'
import os, re, sys

path = sys.argv[1]
unit = os.environ["UNIT"].lower()
specdir = os.environ["SPECDIR"]

# Spec intent for this unit (the semantic source), matched by spec name == file base.
intent = ""
for sp in sorted([os.path.join(specdir, x) for x in os.listdir(specdir)]) if os.path.isdir(specdir) else []:
    if not sp.endswith(".spec"): continue
    name = inten = ""
    for ln in open(sp):
        if ln.startswith("name:"):   name = ln.split(":",1)[1].strip().lower()
        if ln.startswith("intent:"): inten = ln.split(":",1)[1].strip()
    if name == unit:
        intent = inten; break

STOP = set("the a an and or of to for is are be it its with that this into from as at on in by not no use "
           "used using returns return value values given so they each may must can if then "
           "every other one two three exactly which their them per while only still also just "
           "first last another both either neither any some all none more most".split())
# Go keywords + primitive builtins - pure syntax noise, never useful as search terms.
GOKW = set("func type struct interface map chan int int8 int16 int32 int64 uint uint8 uint16 uint32 uint64 "
           "uintptr float32 float64 complex64 complex128 string bool byte rune error nil true false "
           "package import var const range defer go select case default break continue fallthrough "
           "make new len cap append".split())

def words(s):
    # split camelCase + snake_case + non-alnum, lowercase, drop stopwords/keywords/short, dedup
    s = re.sub(r'([a-z0-9])([A-Z])', r'\1 \2', s)
    out = []
    for t in re.split(r'[^A-Za-z0-9]+', s.lower()):
        if len(t) >= 3 and t not in STOP and t not in GOKW and t not in out:
            out.append(t)
    return out

def merge(*lists, limit):
    out = []
    for L in lists:
        for w in L:
            if w and w not in out:
                out.append(w)
    return out[:limit]

def cap(ws, n):
    return ws[:n]

intent_words = words(intent)

lines = open(path).read().split("\n")
out = []
i = 0
changed = False

# Collect file-level exported symbol names for the header index.
filesyms = []
sym_re = re.compile(r'^func (?:\([^)]*\) )?([A-Za-z_][A-Za-z0-9_]*)|^type ([A-Za-z_][A-Za-z0-9_]*)')
for ln in lines:
    m = sym_re.match(ln)
    if m:
        filesyms.append(m.group(1) or m.group(2))

while i < len(lines):
    ln = lines[i]

    # 1) per-file header: right after the package line
    if re.match(r'^package \w+', ln):
        out.append(ln)
        # is the next non-blank line already a file-kw?
        j = i + 1
        while j < len(lines) and lines[j].strip() == "": j += 1
        if not (j < len(lines) and lines[j].lstrip().startswith("// file-kw:")):
            fkw = merge(words(unit), intent_words, [w for s in filesyms for w in words(s)], limit=14)
            out.append("")
            out.append("// file-kw: " + " ".join(fkw))
            changed = True
        i += 1
        continue

    # 2) per-symbol tag: above each top-level func/type
    m = sym_re.match(ln)
    if m:
        # already tagged? (a `// kw:` immediately above, possibly within a doc-comment block)
        k = len(out) - 1
        has = False
        while k >= 0 and (out[k].lstrip().startswith("//") or out[k].strip() == ""):
            if out[k].lstrip().startswith("// kw:"): has = True; break
            if out[k].strip() == "" and not out[k-1:k] : break
            if out[k].strip() == "": break
            k -= 1
        if not has:
            sym = m.group(1) or m.group(2)
            # symbol-name words + signature identifiers + a little unit intent, deduped
            skw = merge(words(sym), words(ln), intent_words[:3], limit=9)
            indent = re.match(r'^(\s*)', ln).group(1)
            out.append(indent + "// kw: " + " ".join(skw))
            changed = True
        out.append(ln)
        i += 1
        continue

    out.append(ln)
    i += 1

if changed:
    open(path, "w").write("\n".join(out))
    print("STAMPED")
PY
  [ $? -eq 0 ] && stamped=$((stamped + 1)) || true
done
echo "code_tags: processed ${#files[@]} file(s) in $root" >&2
exit 0
