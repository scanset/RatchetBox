# tdd vs compose - the assurance-ladder flow, and where it beats / breaks vs compose

The `tdd` flow (PLANS.md S1) builds test-first up the assurance ladder:
`read -> STUB (signatures, panic bodies; oracle: compiles) -> TEST RED (author test + a property/fuzz
target; oracle tdd_red: COMPILES against the stub AND FAILS) -> IMPL GREEN (fill bodies; oracle: go vet +
go test -race) -> FUZZ (oracle go_fuzz: FuzzXxx finds no crash) -> HARDEN (go_quality)`. Repairs are
feedback cycles (red->test, green/fuzz/harden->impl).

- Generated: 2026-06-28
- New tools: `tdd_red` (the red oracle), `go_fuzz` (the property/fuzz rung).
- Engine support: lint now accepts feedback cycles (back-edge that closes a cycle).

## Result 1: counter (single `package main`) - TDD WINS

```text
$ ratchet flow . tdd --ws counter_tdd ""
  read -> stub -> stubwrite
  test -> red FAIL -> test -> red PASS        # RED cycle: first test didn't go red; re-genned, then red
  impl -> green FAIL -> impl -> green PASS     # GREEN cycle: first impl failed -race/test; re-genned, passed
  fuzz -> harden -> done
  PRODUCTION-CLEAN: all available gates passed.
```

Both repair cycles fired. The artifact is strictly STRONGER than the compose-built counter:
- a **red-verified** test suite (TestCounter + concurrent + race + init), so it cannot be a trivial test;
- a **`FuzzCounter`** seeded `0,1,100,1000000` - exercising the large-count edge the cacheproxy missed;
- a correct lock-free `atomic.AddInt64` impl; `harden` PRODUCTION-CLEAN.

compose on the same spec also builds green, but its test is generated alongside the impl (no red proof)
and there is no fuzz/harden rung. **TDD trades more steps for more assurance.**

## Result 2: bounded worker pool (sub-package `pkg: pool`) - the model's stub ceiling

Same specs through both flows. compose -> `compose.fail` (the model split `Pool` across `pool.go` +
`poolimpl.go`, both declaring `Pool` -> redeclared). tdd was then iterated through FOUR real flow bugs,
each found by an oracle and fixed, before hitting a model-reliability wall:

| # | failure (oracle caught it) | fix |
|---|---|---|
| 1 | stub emitted a `_test.go` (from the test spec) -> fails vs panic | stub excludes `role: test` |
| 2 | stub imported `sync/atomic` it didn't use -> unused-import | "import only what signatures need" |
| 3 | specs target `package pool`, stub hardcoded `package main` -> test `import "pool"` fails | stub/test/impl respect the spec's `package:` (fix 2) |
| 4 | stub split `Pool` (data) + `PoolImpl` (component) -> `Pool redeclared` | "one declaration per symbol; merge same-type specs" |
| 5 | stub again imported `sync` it didn't use -> unused-import | **unfixed: prompt rule not reliably obeyed by the local model** |

The repair caps (fix 4) worked - no more spinning to timeout; the flow fails fast and clean at the cap.

## Findings (what the sketch taught us)

1. **The paradigm is sound** - counter proved it end-to-end: red-verified test + fuzz + harden-clean,
   both feedback cycles recovering. The property/fuzz rung (1c) works and seeds real edge cases.
2. **The flow hardened on 4 real bug classes** (test-in-stub, unused-import, sub-package, redeclaration);
   it now respects `package:`, merges same-type specs, and caps every repair cycle (fixes 2-4 done).
3. **The wall is the local model's stub reliability**, not flow design. It repeatedly leaves UNUSED
   IMPORTS in the stub despite an explicit rule - a deterministically-fixable class. The clean fix is a
   goimports-style auto-prune step, but `goimports` is ABSENT in this environment (and not module-cached).
4. **Deeper: the spec flow over-decomposes** one type into two units (`Pool` data + `PoolImpl` component),
   which is what makes both compose and tdd collide. A sharper `spec` decomposition (one unit per type)
   would help both flows.

## Net
TDD beats compose on assurance for single-package units (counter): a red-verified test + a fuzz target +
harden-clean, vs compose's test-with-impl + build gate. For multi-unit/sub-package systems both hit the
local model's code-gen ceiling; the tdd flow's oracles correctly reject every bad attempt and it now
fails fast. The concrete unblock is an **import-prune tool** (build one, or install goimports) plus a
**less aggressive spec decomposition**. Stopped iterating here - past this point it is model capability,
not flow design.
