# Transcript: a production webhook dispatcher, built in layers from diffable specs (local model)

**Plain-language summary:** Instead of composing a whole service in one breadth-first pass (the way we
built the Redis rate limiter), we built a **durable webhook dispatcher** the way real software is
actually written: a small working skeleton first, then layer after layer of production capability on top
— durability, resilience, correctness, observability — each layer a small, verified diff over the last.
The local model (qwen3-coder 30B-A3B, ~3B active) did the generation; deterministic tooling derived each
increment from the specs and gated each layer. Five layers, one `package main` module, all on-disk state
released between passes (stateless). This transcript is as much about the **methodology and the tooling
bugs it exposed** as the app.

---

## The idea: layers are diffs over snapshots, and the diff is *derived*, not authored

A real codebase is never finished in one shot. We modelled that with **full spec snapshots per layer**:

```
workspaces/webhookd/spec/
  L0/  Job Queue Deliverer Worker Server Main                 walking skeleton
  L1/  …  + Wal,            changed Server, Main               durability (WAL + replay)
  L2/  …  + Breaker, RetryPolicy,  changed Worker, Main        resilience (retry + circuit breaker)
  L3/  …  + DeadLetter,     changed Server, Worker, Main       correctness (idempotency + dead-letter)
  L4/  …  + Metrics,        changed Server, Worker, Main       observability (+ graceful drain)
```

Each `spec/Ln/` is the **complete intended system at that layer** — coherent and independently readable.
The *increment* is never hand-authored; a deterministic tool **derives** it by diffing two snapshots, so
the changeset can never drift from the specs:

- `spec_diff <proj> "L0 L1"` → the foreach-style worklist of every unit ADDED or CHANGED, in dependency
  order (topo-sorted on a `dependsOn:` spec field, tie-broken by role).
- `spec_changeset <proj> "L0 L1"` → the human-readable "release notes" (added / changed / removed + a
  unified diff of each changed spec).
- `sync_layer <proj> L1` → "checks out" `spec/L1` into the working `specs/` dir.

This is the spec analog of tagged releases + `git diff`: snapshots are the source of truth, the diff is
computed. (Chosen over hand-authored migration files precisely because a derived diff cannot drift.)

## The `evolve` flow — and the architectural lesson it forced

The first `evolve` design was wrong, and the way it was wrong is the most important finding here.

**v1 (wrong): reuse compose's machinery.** `evolve` derived the changed units and ran the existing
`add_unit` flow once per unit — exactly how `compose` builds. It failed immediately. When it regenerated
`Server` with its new signature `NewServer(q, wal)`, `add_unit`'s oracle — *build the whole module* —
failed, because the **not-yet-regenerated `main.go` still called the old `NewServer(q)`**:

```
BUILD FAILED after staging server.go:
vet: ./main.go:37:20: not enough arguments in call to NewServer
        have (*Queue)
        want (*Queue, *Wal)
```

Then it got worse: when `main.go`'s turn came and its repair ran against the still-broken module, the
model "fixed" the build by **re-declaring every type inside `main.go`** (a second `Job`, `NewServer`,
`StatePending`…), corrupting the package with duplicate definitions.

Both symptoms have ONE root cause:

> **`compose`/`add_unit` assume *append-only growth* — a new unit never breaks an existing caller, so a
> per-unit "build the whole module" gate is correct. A *change layer* is the opposite: a callee and its
> callers must change *together*. Gating per-unit, mid-change, can never pass, because the module is
> incoherent until the whole set is regenerated.**

**v2 (right): a change layer is a transactional cross-cutting edit.** This is exactly what the existing
`coedit` flow already does for hand-driven multi-file edits, via the `stage_files` oracle. So `evolve`
v2 mirrors it:

1. `sync_layer` checks out the target specs.
2. `evolve_ctx` assembles the **whole changed set** as one context — each unit's *new spec* + its
   *current file* (so the model edits rather than reinvents, and never re-declares another file's types).
3. `module_api` supplies the exact surface of the *unchanged* units.
4. The model regenerates **every** changed/added file in one shot, as one `=== path ===` marker payload.
5. `stage_files` writes them all and verifies the **whole module once** (`go vet` + `go test -race`),
   **rolling back every file** if anything fails — then one bounded repair.

The contrast is the lesson: **growth is per-unit and incremental; change is whole-set and transactional.**
Same engine, two oracles, picked by whether the work adds or edits.

## Three tooling bugs the layers exposed (each fixed deterministically)

The methodology worked; getting there surfaced three real holes, each in a different place, each fixed so
every future build benefits.

### 1. Scaffold hole — `go.mod` language version silently broke HTTP routing (caught at RUNTIME, not build)
L0 built and `go test`-ed clean, but the demo **panicked at runtime** — `expected 202, got 404`. The
model had written idiomatic Go 1.22 method routing, `mux.HandleFunc("POST /webhook", …)`. But
`new_module.sh` scaffolded `go 1.21` in `go.mod`, and **`net/http`'s ServeMux gates method-pattern
parsing on the go.mod language version** — under `go 1.21` "POST /webhook" is a dead pattern that never
matches, so every request 404s. The build can't catch this (the string is valid Go); only behavior can.
*Fix:* `new_module.sh` now scaffolds `go 1.23`. A context/scaffold bug, surfaced only because we ran the
thing.

### 2. Post-processing hole — missing imports (the model's single most common build-breaker)
The first transactional `evolve L0→L1` failed twice on the same trivial class: the model used a stdlib
package without importing it (`wal.go` used `bytes.Split`; then `main.go` used `bytes`). The pipeline had
`prune_imports` (which only *removes* unused imports) but nothing to *add* missing ones. Adding an import
is mechanical, not reasoning — so it should be deterministic, not left to the model's repair budget.
*Fix:* wire **`goimports`** (adds missing + removes unused, resolving third-party paths against go.mod)
into all three staging tools (`stage_files`, `stage_build`, `stage_check`), with a `prune_imports`+`gofmt`
fallback. After this, the import-failure class disappeared — the very next pass's only failure was a
*real* bug (below), and L1→L2 then passed with **no repair at all**.

### 3. Capability wall — the `break`-inside-`select` pitfall (a "prompt fix")
`evolve L2→L3` failed both attempts on `main.go: unreachable code`. The model wrote a poll loop as
`for { select { … default: if dlq.Len() >= 1 { … break } } }`. In Go, **`break` inside a `select`
breaks the `select`, not the enclosing `for`** — so the loop is infinite and everything after it is
unreachable (a `go vet` error). The model fell for it and its one repair didn't catch it. This is the
"last 10–15% of Go knowledge" wall. *Fix (the prompt fix predicted for this class):* pin a safe
**deadline-loop** idiom in the spec — `deadline := time.Now().Add(3*time.Second); for cond &&
time.Now().Before(deadline) { time.Sleep(…) }` — no `select`, terminates normally. Re-ran the workflow;
it cleared (L2→L3 then passed with no repair).

These three map cleanly onto the three failure LOCATIONS we keep returning to: **context/scaffold**
(go.mod), **post-processing** (imports), **generation** (the pitfall). "The build failed" is never a
diagnosis; *where* it failed is.

### 4. The one unit the oracle can't gate — `main` (the senior intervention)
Every component unit — `Wal`, `Breaker`, `RetryPolicy`, `DeadLetter`, `Metrics`, `Server`'s idempotency,
`Worker`'s resilience — the model produced to spec, and the module oracle (`go vet` + `go test -race`)
gated each one. **`main` was the exception, repeatedly.** It is the most complex and least-constrained
unit (it wires everything *and* scripts a multi-step demo), and crucially the oracle cannot gate its
*intent* — `main` has no test, so any `main` that compiles passes. Across regenerations the model gave us,
in turn: a 404 at runtime (the go.mod bug), a reused `*http.Request` whose body was drained on the second
`Do` (`ContentLength=50 with Body length 0`), and finally a `main` that **silently dropped the entire demo**
and just started a bare server — metrics all zero — yet still passed `vet`/`test`. Two of those pinned
spec idioms fixed (deadline loop, fresh-request-per-send); the last is not a pinnable idiom, it is the
unit being inherently under-determined. So `main.go` was **hand-authored** — the exact "the human edits
intent" step the architecture promises, localized to the one place the oracle is blind. With it, the
final L4 service runs every feature end-to-end:

```
recovered 0 job(s) from the WAL
dead-letter demo: accepted with 202
dead-letter queue holds 1 job(s)
idempotency demo: first=202 second=200 (200 second => de-duplicated)
GET /metrics:
webhookd_accepted 2
webhookd_delivered 0
webhookd_failed 1
webhookd_dead_lettered 1
```

The lesson is not "the model failed at `main`" — it is that **the oracle's blind spot and the model's weak
spot are the same unit**, so that is exactly where a human belongs. Everything the oracle *could* verify,
the model got right.

## What got built, layer by layer

Final module: **11 units**, one `package main`, `go build` + `go vet` + `go test -race` clean.

| Layer | Adds | Changes | New capability | Pass result |
|---|---|---|---|---|
| **L0** | Job, Queue, Deliverer, Worker, Server, Main | — | ingest → queue → worker → HTTP deliver | compose; 1 repair (main) |
| **L1** | Wal | Server, Main | durable accept (WAL append before enqueue) + replay | 1 repair (http.Post arg) |
| **L2** | Breaker, RetryPolicy | Worker, Main | retry w/ backoff + circuit breaker | **no repair** |
| **L3** | DeadLetter | Server, Worker, Main | idempotency dedupe + dead-letter on give-up | **no repair** (after idiom pin) |
| **L4** | Metrics | Server, Worker, Main | `/metrics` counters + graceful drain | 1 repair |

Every `evolve` pass regenerated **only its changed set** (1 added + 1–3 changed units) as one transactional
edit, never the whole module, each against the verified workspace from the layer before — the workspace
*is* the state, the spec snapshot is the next recipe, and context is released at the end of each pass.
Note the trend: once `goimports` closed the import class and the deadline-loop idiom closed the
`select` class, **L2 and L3 passed with zero repairs** — the determinism investments compounded.

## Lessons

1. **Growth and change need different oracles.** Append-only composition gates per-unit; a cross-cutting
   change must be regenerated as a set and gated transactionally (write-all, verify-once, roll-back-all).
   Picking the wrong one doesn't just fail — it corrupts (the duplicate-declaration cascade).
2. **Push every mechanical class out of the model.** `go.mod` version, missing imports, formatting,
   keyword tags — none of these are reasoning. Each one left to the model burns a repair and sometimes
   walls the whole pass; each one made deterministic removes a failure class permanently. `goimports`
   alone turned a two-repairs-and-fail pass into a clean one.
3. **The build oracle is not a behavior oracle.** Two of the three bugs (404 routing, the panics) passed
   `go build`/`go vet`/`go test` and only showed when `main` ran — because `main` has no test. The layer
   gate verifies the module *compiles and its tests pass*; it does not verify the demo's intent. Where it
   matters, write the test (or read the run record).
4. **Layering mirrors real development and de-risks the model.** Each pass is small enough that a ~3B-active
   model handles it, the diff is reviewable, and a wall (the `select` pitfall) is localized to one unit and
   one layer — exactly where a senior would intervene with a one-line spec pin and re-run.

## Teardown
The workspace (git-ignored scratch) holds the final L4 service; the WAL file lives in `os.TempDir()`. No
state persists beyond the artifact — build the context, verify, release.
