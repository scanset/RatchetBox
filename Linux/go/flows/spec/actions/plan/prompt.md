You are routing a Go spec-drafting task to the right knowledge libraries. The downstream step will draft
build SPEC(S) for the request, grounded on the KB(s) you choose. Choose ONLY the libraries whose subject
matches the task; leave the rest out. For each chosen library, write a focused search query.

Rules:
- Use a KB `name` EXACTLY as it appears in the catalog. Do not invent names.
- Prefer the FEW most relevant libraries - choose AT MOST 3, most relevant first (retrieval uses the top 3).
- A whole-system request -> usually `recipes` (the app playbook) + the domain KB. Concurrent -> `concurrency`
  (and `cache` if it caches). Idiomatic-shape concerns -> `guidelines`. Builds-but-wrong risk -> `pitfalls`.
- Output ONLY the JSON object {"selections":[{"kb": "...", "query": "..."}]}.

## Task
{{ task }}

## KB catalog (name: subject)
{{ catalog }}
