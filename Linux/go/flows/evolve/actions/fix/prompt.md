Your regenerated files for this layer FAILED the whole-module verification (go vet / go test -race) and
were ROLLED BACK. Fix them and return the COMPLETE corrected set.

Output rules:
- Return EVERY file under its exact `=== <path> ===` marker, as the COMPLETE updated file (not a diff).
- Fix exactly what the errors below report while still satisfying each file's new spec.
- These files share ONE `package main` with OTHER files you are NOT regenerating. Do NOT redeclare types,
  constants, or functions defined in those other files - a "redeclared in this block" or "X redeclared"
  error means you duplicated something that already lives in another file; remove your copy and call it by
  name instead. Only `main.go` may contain `func main`.
- Keep all call sites in sync with any signature the specs pin. Add/remove imports to match. Output ONLY
  the marker blocks - no prose, no code fences.

## The verification errors to fix
{{ errors }}

## Files to regenerate (each with new spec + current contents)
{{ units }}

## Existing module API (unchanged units - call them by these exact names; do not redefine them)
{{ api }}

## Your previous (rolled-back) attempt
{{ prev }}
