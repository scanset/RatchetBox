Your previous Go unit broke the module build. Return a CORRECTED complete Go file for {{ path }}. Fix
exactly what the compiler reported. Output ONLY the Go source - no prose, no markdown fences.

- Keep `package main`. Other units are in the same package: call their names directly, do not import or
  redeclare them. Only `main.go` defines `func main`.
- A "redeclared" or "undefined" error usually means a name does not match the existing API below - use
  the API's exact names. Remove any unused import or variable.

## API ALREADY IN THE MODULE (call these verbatim)
{{ api }}

## THIS UNIT'S SPEC
{{ spec }}

## Build errors (from go build ./... over the whole module)
{{ errors }}

## Previous attempt
{{ prev }}
