# spec - catalog-driven, oracle-gated retrieval (the routing rework + test ladder)

The `spec` flow was rewired from **6 fixed `search` blocks** (every KB queried unconditionally) to
**catalog-driven retrieval**: read the high-level KB catalog -> the model PLANS which 1-3 KBs to consult
-> the `route_score` ORACLE gates that selection (grounding + coverage) -> on FAIL it loops back to
re-plan with the oracle's feedback -> draft the spec(s) grounded on the SELECTED KBs via dynamic search
(`"search": "{{ kb }}"`, target resolved at runtime). This retires the proliferation problem (adding a
KB no longer means editing every generate node) and makes retrieval adapt to the task.

- Generated: 2026-06-28
- Flow: `spec.catalog -> spec.plan <-> spec.gate -> spec.generate -> spec.write` (+ well-formedness repair)
- Engine support: dynamic search target (`render(ib.Lib)`), `jsonx.Pointer` array indexing
  (`selections/0/kb`), `ratchet tokenize` (the gate folds words exactly as retrieval), lint support for
  feedback cycles.

## #1 counter (concurrency) - full pipeline green

```text
$ ratchet flow . spec --ws counter "a thread-safe in-memory counter with atomic increment/get and a concurrent test that hammers it from many goroutines"
  spec.catalog -> spec.plan -> spec.gate -> spec.generate -> spec.write -> spec.done
  plan picked: concurrency, stdlib, pitfalls
  gate: concurrency, stdlib(score 7), pitfalls -> VERDICT PASS
  wrote 3 specs: Counter.spec, CounterTest.spec, main.spec   (atomic Inc/Get, 1000x1000 goroutine race test)

$ ratchet flow . compose --ws counter ""    # -> OK: module builds and tests pass (-race) with go1.26.4
```

## #2 httpapi (different domain) - routing ADAPTS

```text
$ ratchet flow . spec --ws httpapi "an HTTP JSON API with GET /items and POST /items backed by an in-process store, with request timeouts and a graceful-shutdown server, plus a handler test"
  plan picked: recipes, stdlib, concurrency      # NOT concurrency/cache - routing adapted to the HTTP domain
  gate: VERDICT PASS
  wrote 4 specs: Store.spec, Server.spec, main.spec, ServerTest.spec
```

The spec routing was correct. `compose` then FAILED to build - the local model wrote `func main` into a
library file (violating an explicit prompt rule), misused `http.StripPrefix`, and drifted a struct field.
The build oracle caught all of it (`compose.fail`); no broken code shipped. **Code-gen quality, not
routing**, is the ceiling here - the data that motivates the TDD plan.

## #3 crawler (multi-domain) - the repair loop in action

```text
$ ratchet flow . spec --ws crawler "a concurrent web crawler: a bounded worker pool of N goroutines fetches URLs over HTTP, a thread-safe visited-set dedupes URLs, results stream back over a channel, with context cancellation for graceful shutdown, plus a test that crawls fake pages without data races"

  step 1: spec.catalog
  step 2: spec.plan      -> picks concurrency, recipes, pitfalls
  step 3: spec.gate      -> FAIL: "stdlib holds ['test','url']"   (stdlib genuinely relevant, not picked)
  step 4: spec.plan      -> RE-PLAN with the oracle feedback -> picks concurrency, stdlib, pitfalls
  step 5: spec.gate      -> VERDICT PASS
  step 6: spec.generate
  step 7: spec.write     -> wrote 4 specs: Crawler.spec, CrawlResult.spec, CrawlerTest.spec, CrawlerMain.spec
  step 8: spec.done
```

The gate caught the model under-routing (dropping `stdlib` for a URL-fetching crawler), fed the verdict
back, and the re-plan fixed exactly what was flagged. This is the oracle-gated routing fully realized.

## Refinements the gate surfaced during testing (the oracle earning its keep)

Each was caught by a gate FAILURE, not by reading code:

1. **Stemmer over-stripped `es`** (`goroutines`->`goroutin` != `goroutine`). Broke real BM25 retrieval too.
   Fixed in the engine tokenizer + mirrored gate: strip `es` only after a sibilant; else just `s`.
2. **Coverage false-positives on incidental words** (`back` from "backed by", `stream` from "stream back").
   Fixed: judge relevance by HIGH-signal text (summary + titles), and require a CLUSTER of >=2 uncovered
   terms before flagging a missed KB - one shared word is noise.
3. **Stopwords weren't stemmed** (`plus` != `plu`). Fixed: fold the stopword list through `ratchet tokenize`
   too, so even stopword matching is engine-canonical.
4. **Catalog summary gap** - the `concurrency` summary lacked the word "concurrent", so `cache` wrongly
   owned the term. Fixed the summary (catalog maintenance).

Net: routing adapts to the task, the oracle catches its own mistakes and re-plans, and the gate folds
words exactly as retrieval does. The remaining limit is code-gen quality in `compose` (see the TDD plan).
