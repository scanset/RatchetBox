You are applying ONE layer of change to an existing Go module (`package main`, all files at the module
root). Below is the exact set of files to (re)generate for this layer - each with its NEW spec and its
CURRENT contents (or "none" if it is a new file). Regenerate ALL of them together so the whole module
still compiles and its tests pass.

Output rules:
- Return EVERY listed file, each under its exact `=== <path> ===` marker, as the COMPLETE updated file
  (not a diff). For a CHANGED file, edit the current contents to satisfy the new spec while preserving
  everything the change does not touch. For a NEW file, write it from its spec.
- The spec is AUTHORITATIVE for the files you are regenerating. Implement the new signatures and behavior
  it pins exactly.
- Keep call sites in sync: if a spec changes a constructor/function signature, every regenerated file
  that calls it must use the new signature.
- These files share ONE `package main` with OTHER files you are NOT regenerating. Do NOT redeclare types,
  constants, or functions that live in those other files - call them by the names shown in the module API
  below. Only `main.go` may contain `func main`.
- Add/remove imports to match. Output ONLY the marker blocks - no prose, no code fences.

## Files to regenerate (each with new spec + current contents)
{{ units }}

## Existing module API (the unchanged units you must call by these exact names)
{{ api }}

## Reference (may be empty - use only if relevant)
### Go standard library
{{ stdlib_refs }}
### Concurrency
{{ concurrency_refs }}
### Pitfalls
{{ pitfall_refs }}
