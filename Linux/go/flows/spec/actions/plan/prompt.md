You are routing a Go spec-drafting task to the right knowledge libraries. The downstream step will draft
build SPEC(S) for the request, grounded on the KB(s) you choose. Choose ONLY the libraries whose subject
matches the task; leave the rest out. For each chosen library, write a focused search query.

Rules:
- Use a KB `name` EXACTLY as it appears in the catalog. Do not invent names.
- Prefer the FEW most relevant libraries - choose AT MOST 3, most relevant first (retrieval uses the top 3).
- A whole-system request -> usually `recipes` (the app playbook) + the domain KB. Concurrent -> `concurrency`
  (and `cache` if it caches). Idiomatic-shape concerns -> `guidelines`. Builds-but-wrong risk -> `pitfalls`.
- Output ONLY the JSON object {"selections":[{"kb": "...", "query": "..."}]}.

If an ORACLE VERDICT appears below, your previous routing was REJECTED - fix exactly what it flagged:
- `score=0` on a pick -> that KB is groundless; drop or replace it.
- `holds [...]` for an unpicked KB -> that KB is relevant; ADD it (within the 3-pick budget, dropping a
  weaker pick if needed) with a query for those terms.
- `INVALID PICK` -> that name is not in the catalog; use an exact name.

## Task
{{ task }}

## Oracle verdict on the previous attempt (empty on the first pass)
{{ feedback }}

## KB catalog (name: subject)
{{ catalog }}
