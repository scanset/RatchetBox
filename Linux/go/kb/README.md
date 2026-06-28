# kb/ - the knowledge libraries

Indexed, routable knowledge for the go ratchet, organized cpp-style: one library per subdirectory,
each indexed into its own `manifest.json` (id/title/summary/keywords, extracted deterministically by
`ratchet index`). The libraries are registered in `catalog.json` (the high-level KB registry the engine
reads: name/path/default/summary, auto-discovered + authored - see below), NOT in `ratchet.json`. Chains
ground on a library via a `search`/`ref` input binding; `/search <lib> <query>` answers from it.

## Libraries

| Dir | Name | Source | Built by | Status |
|---|---|---|---|---|
| `idioms/`  | `kb` (default) | hand-written Go idioms for buildable code | author | seed |
| `stdlib/`  | `stdlib`       | the Go standard library API reference (176 packages) | `tools/kb_ingest_godoc.sh` (offline `go doc -all`) | built |
| `patterns/`| `patterns`     | 23 GoF patterns (ingested) + authored algorithm patterns (e.g. two-heap median, production-http-server) | `tools/kb_ingest_patterns.sh` + authored | built (25) |
| `concurrency/`| `concurrency` | 18 channel/goroutine patterns (fan-in, select-timeout, worker-pool, context, bounded-parallelism, ...) | `tools/kb_ingest_concurrency.sh` (from the lotusirous/go-concurrency-patterns repo) | built (18) |
| `cache/`   | `cache`        | production concurrent-cache building blocks (reader-biased RWMutex, single-flight, timer-wheel TTL, W-TinyLFU, count-min sketch) - rich searchable descriptions + real source | `tools/kb_ingest_theine.sh` (from Yiling-J/theine-go, MIT) | built (8) |
| `cqrs/`    | `cqrs`         | event-driven / CQRS building blocks (Message, Publisher/Subscriber, Router + middleware, gochannel pub/sub, CQRS command/event bus + processors + marshaler) | `tools/kb_ingest_watermill.sh` (from ThreeDotsLabs/watermill, MIT) | built (10) |
| `deps/`    | `deps`         | third-party module API (go doc per added module) | `tools/add_dep.sh` (`/do add_dep <ws> <module>`) | built (auto-populated) |
| `guidelines/`| `guidelines` | idiomatic-style entries from Effective Go / Code Review Comments / Go Proverbs (real code) | authored from canonical sources (see `guidelines/README.md`) | built (11) |
| `pitfalls/`  | `pitfalls`   | builds-but-wrong traps (unused imports, nil-map write, loop-var capture, channel deadlock, slice aliasing, redeclared top-level name, mutating under RLock, string(int) conversion) | authored from `runs/` evidence | built (10) |
| `spec/`      | (planned) | the Go language spec, split by section | ingest (split) | planned |

The `stdlib` library is the Go analog of the cpp ratchet's `cppref` - except `go doc` generates it
locally from the installed toolchain, so there is nothing to scrape and it always matches your Go
version. Regenerate after a toolchain upgrade.

## Build / rebuild

```
tools/kb_ingest_godoc.sh kb/stdlib                    # (re)generate stdlib, offline, deterministic
tools/kb_ingest_patterns.sh <patterns-repo> kb/patterns   # (re)generate the design-patterns library
ratchet index kb/stdlib                # (re)build a library's routing manifest (after any kb/<lib> edit)
ratchet index kb/patterns
ratchet index kb/idioms
```

Add a library: create `kb/<lib>/` with one-topic-per-file markdown, `ratchet index kb/<lib>`, then
`tools/kb_catalog.sh` (auto-discovers the new dir into `catalog.json`; add its one-line `summary` there).
No `ratchet.json` edit needed - the engine reads the registry from `catalog.json`. Wire a flow to it with a
`{ "search": "<lib>", "query": "{{ ... }}", "k": N, "as": "refs" }` binding (multi-library plan-routed
retrieval, cpp-style, is the next phase - see `../ROADMAP.md`).
