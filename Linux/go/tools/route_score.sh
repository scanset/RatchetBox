#!/usr/bin/env bash
# route_score.sh - the deterministic gate for model-driven KB routing (the "oracle" half of the hybrid
# search walk). Given a QUERY and the KB(s) the planner PICKED, it (1) scores each pick's grounding
# against that KB's catalog summary + manifest keywords/titles, and (2) checks COVERAGE: any query term
# that some OTHER (unpicked) KB holds (by high-signal text) but the picks do not = a dropped branch.
#   Exit 0 = picks plausible (>=1 grounded) AND no available query term left uncovered.
#   Exit 1 = a pick is groundless/hallucinated, or a relevant KB was missed -> engine should widen/backtrack.
# This is a plausibility FLOOR, not a correctness proof; it vetoes obviously-wrong picks + guarantees
# coverage. TOKENIZATION is delegated to the engine (`ratchet tokenize`) so the gate folds word forms
# EXACTLY as retrieval does - no stemmer is reimplemented here. The scoring POLICY (stopwords, overlap,
# coverage, high-signal) is the oracle's and stays here.
# Usage (CLI):  route_score.sh "<query>" <picked-kb> [<picked-kb> ...]
# Usage (flow):  route_score.sh "<query>"   < plan.json   (picks read from the planner's JSON on stdin:
#                a {"selections":[{"kb":"...","query":"..."}]} object, or a bare ["kb",...] array).
set -u
[ $# -ge 1 ] || { echo "usage: route_score.sh \"<query>\" [<kb>...]   (or pipe planner JSON on stdin)"; exit 2; }
stdin_json=""
if [ $# -lt 2 ] && [ ! -t 0 ]; then stdin_json="$(cat)"; fi
STDIN_JSON="$stdin_json" python3 - "$@" <<'PY'
import json, os, re, sys, subprocess

query = sys.argv[1]
picks = sys.argv[2:]
if not picks:
    raw = os.environ.get("STDIN_JSON", "").strip()
    if raw:
        try:
            obj = json.loads(raw)
            sel = obj.get("selections", obj) if isinstance(obj, dict) else obj
            for s in sel:
                picks.append(s["kb"] if isinstance(s, dict) else s)
        except Exception as e:
            print(f"INVALID PLAN JSON on stdin: {e}"); sys.exit(2)
if not picks:
    print("NO PICKS: pass KB names as args or planner JSON on stdin"); sys.exit(2)

# Raw stopwords (oracle policy). Tokenized through the engine below (as a STOP_TEXT line) so they fold to
# the SAME forms as the tokens they filter - e.g. "plus" -> "plu", "does" -> "doe" - instead of mismatching.
STOP_TEXT = ("a an the of to for and or in on with without by is are be do does this that it as at from "
             "into your you we our use using used go golang func type when then than only not no any all "
             "some each per via new get set add make want need how one two onto over under between "
             "plus also etc such while both given back many several more most less first last next other "
             "like upon across along about above below out off down up")

cat = {e["name"]: e for e in json.load(open("kb/catalog.json")).get("entries", [])}
names = list(cat)

def titles_of(name):
    mp = os.path.join(cat[name]["path"], "manifest.json")
    if os.path.exists(mp):
        try:
            return " ".join(ent.get("title", "") for ent in json.load(open(mp)).get("entries", []))
        except Exception:
            pass
    return ""

def keywords_of(name):
    # Manifest keywords are already engine-tokenized (the indexer uses search.Tokens), so use them as-is.
    mp = os.path.join(cat[name]["path"], "manifest.json")
    out = set()
    if os.path.exists(mp):
        try:
            for ent in json.load(open(mp)).get("entries", []):
                out |= {k.lower() for k in ent.get("keywords", []) if len(k) > 2}
        except Exception:
            pass
    return out

# HIGH-signal text per KB (catalog summary + name + doc titles) drives the COVERAGE check; tokenize it
# plus the query in ONE batched call to the engine's canonical tokenizer.
hi_text = [cat[n].get("summary", "") + " " + n + " " + titles_of(n) for n in names]
lines = [query] + hi_text + [STOP_TEXT]
try:
    proc = subprocess.run(["ratchet", "tokenize"], input="\n".join(lines),
                          capture_output=True, text=True)
except FileNotFoundError:
    print("ERROR: `ratchet tokenize` not found on PATH (the gate delegates tokenization to the engine)")
    sys.exit(2)
toklines = proc.stdout.split("\n")
stop = set(toklines[len(names) + 1].split())   # stopwords, engine-stemmed to match the token forms

def filt(line):
    return {t for t in line.split() if len(t) > 2 and t not in stop}

q = filt(toklines[0])
hi = {names[i]: filt(toklines[i + 1]) for i in range(len(names))}          # high-signal terms
full = {n: hi[n] | (keywords_of(n) - stop) for n in names}                 # + body keywords, for scoring

scores, bad = {}, []
for p in picks:
    if p not in cat:
        print(f"INVALID PICK: no KB named '{p}' in catalog"); bad.append(p); continue
    overlap = q & full[p]
    scores[p] = len(overlap)
    print(f"  {p:12} score={len(overlap):2d}  matched={sorted(overlap)}")

picked_terms = set().union(*(full[p] for p in picks if p in cat)) if picks else set()
discrim = max(2, len(cat) // 3)
missed = []
for term in sorted(q):
    if term in picked_terms: continue
    holders = [n for n in names if term in hi[n]]   # high-signal holders only (subject, not noise)
    if holders and len(holders) <= discrim: missed.append((term, holders))

if missed:
    print("UNCOVERED (a relevant KB was not picked):")
    for term, holders in missed:
        print(f"  '{term}' is in {holders} but no picked KB")

grounded = [p for p, s in scores.items() if s > 0]
ok = bool(grounded) and not bad and not missed
print("VERDICT:", "PASS" if ok else "FAIL")
sys.exit(0 if ok else 1)
PY
