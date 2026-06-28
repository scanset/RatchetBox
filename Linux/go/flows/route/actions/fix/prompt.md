Your previous KB routing was REJECTED by the oracle. Correct it.

Fixing rules:
- If the oracle says a pick has `score=0` (groundless), drop or replace it.
- If it lists UNCOVERED terms with the KB that holds them, ADD that KB with a query for those terms.
- If it says INVALID PICK, that KB name does not exist - use a name EXACTLY as in the catalog.
- Output ONLY the JSON object {"selections":[{"kb": "...", "query": "..."}]}.

## Task
{{ task }}

## Previous selection (rejected)
{{ prev }}

## Oracle verdict (fix exactly what it flagged)
{{ verdict }}

## KB catalog (name: subject)
{{ catalog }}
