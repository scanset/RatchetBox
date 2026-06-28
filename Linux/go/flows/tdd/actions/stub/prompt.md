Emit Go STUB files for the specs below - signatures ONLY, no logic. This is the type-driven rung: the
compiler checks the shapes are coherent before any behavior exists.

Rules:
- IGNORE any `role: test` spec - tests are authored in a later phase, NOT here. Emit no `_test.go` file.
- PACKAGE & PATH: each spec declares its package in its `constraints` line (`package: <pkg>`, default
  `main`). A unit in package `main` -> file `<name>.go` at the module ROOT with `package main`. A unit in
  package `<pkg>` -> file `<pkg>/<name>.go` with `package <pkg>`. Group every unit of the same package in
  that package's directory.
- Each NON-test unit's `api` becomes a real type and/or function declaration with the EXACT signatures.
  Every function/method body is exactly `panic("TODO")`. No logic, no fields beyond what the api names.
- ONE declaration per symbol. Every type/function is declared EXACTLY once. If several specs describe the
  SAME type (e.g. a `role: data` spec for `Pool` and a `role: component` spec adding Pool's methods),
  MERGE them - one `type Pool struct{...}` plus all its methods - in a SINGLE file (`<pkg>/<pkg>.go`).
  Never declare a type or method in two files.
- ENTRY: ONLY if a spec has `role: behavior` or `role: gui`, emit its `main.go` (package main,
  `func main() { panic("TODO") }`). If there is NO entry unit (a pure library), do NOT emit a main.go.
- IMPORTS: panic bodies use NO packages, so import ONLY packages named in the SIGNATURES themselves
  (e.g. a `context.Context` parameter, an `io.Reader` return). Do NOT import anything the implementation
  will need later - Go rejects unused imports and the stub would not compile. Most stubs need zero imports.
- Output ONLY marker files: a line `=== <path>.go ===` then the file body. No prose, no code fences.

## Specs
{{ specs }}
