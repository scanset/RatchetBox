You are routing a Go build task to the right knowledge libraries. Choose ONLY the libraries whose
subject matches the task; leave the rest out. For each chosen library, write a focused search query
that names the concepts to retrieve.

Rules:
- Use a KB `name` EXACTLY as it appears in the catalog. Do not invent names.
- Prefer the FEW most relevant libraries - choose AT MOST 3, not all of them (retrieval consumes the top 3).
- Concurrent task -> include `concurrency` (and `cache` if it caches). Builds-but-wrong risk -> `pitfalls`.
  Standard-library APIs -> `stdlib`. Third-party module -> `deps`.
- Output ONLY the JSON object {"selections":[{"kb": "...", "query": "..."}]}.

## Task
{{ task }}

## KB catalog (name: subject)
{{ catalog }}
