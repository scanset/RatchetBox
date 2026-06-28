Implement the module: replace the stub `panic("TODO")` bodies with real code so the existing test PASSES
(go vet + go test -race + the fuzz target). Do NOT change the signatures the test calls.

Rules:
- Output the SAME files as the stub (same `=== <path>.go ===` paths and the SAME `package` line), now with
  full implementations. Keep every exported signature identical. You may add unexported helpers/fields.
  Declare each type/function EXACTLY once (do not re-split a merged type across files).
- The test is the contract - satisfy exactly what it asserts, including the property/fuzz invariant and any
  concurrent (-race) expectations. Use the reference material for correct concurrency + to avoid traps.
- Standard library only. Include every import; remove unused ones.
- Output ONLY marker-separated files. No prose, no code fences.

## Specs
{{ specs }}

## The test you must satisfy
{{ test }}

## Stub (the signatures to keep)
{{ stub }}

## Reference (concurrency / pitfalls / stdlib)
{{ conc_refs }}
{{ pitfall_refs }}
{{ stdlib_refs }}

## Oracle feedback to fix (empty unless a prior attempt failed)
### go test / build (green)
{{ green_fb }}
### fuzz
{{ fuzz_fb }}
### harden (vet/staticcheck/govulncheck)
{{ harden_fb }}
