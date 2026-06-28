Author the Go TEST file(s) for this module, from the specs' `behavior`. The implementation is still a
STUB (every body panics), so a correct test MUST compile and MUST FAIL right now - that is the red gate.

Rules:
- PACKAGE: write the test in the SAME package and directory as the code it tests - read the package from
  the stub below. A stub in `package pool` under `pool/` -> `pool/<name>_test.go` with `package pool`; a
  stub in `package main` at the root -> `<name>_test.go` at the root with `package main`. NEVER import the
  module's own package by path - the test is IN that package.
- Call the EXACT signatures shown in the stub below.
- Cover the core behavior with example tests (table-driven where natural). Assert real properties of the
  result, not just "no panic".
- Include AT LEAST ONE property/fuzz target: a `func FuzzXxx(f *testing.F)` that calls `f.Fuzz(func(t *testing.T, ...) {...})`
  asserting an invariant that holds for ALL inputs (e.g. round-trips, monotonicity, bounds), OR a
  `testing/quick` property. Seed it with `f.Add(...)`.
- For concurrency behavior, exercise it from many goroutines and assert the final invariant (run under -race).
- Standard library only (`testing`, `testing/quick`, `sync`, etc.). Include every import.
- Output ONLY marker-separated files: a line `=== <name>_test.go ===` then the body. No prose, no fences.

## Specs (behavior to test)
{{ specs }}

## Stub (call THESE exact signatures)
{{ stub }}

## Red-gate feedback on the previous attempt (empty on the first pass)
{{ feedback }}
