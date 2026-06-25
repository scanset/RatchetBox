# kb/ - the knowledge libraries

Indexed, routable knowledge for the go ratchet, organized cpp-style: one library per subdirectory,
each registered separately in `ratchet.json` `knowledgeBases[]` and indexed into its own
`manifest.json` (id/title/summary/keywords, extracted deterministically by `ratchet index`). Chains
ground on a library via a `search`/`ref` input binding; `/search <lib> <query>` answers from it.

## Libraries

| Dir | Name | Source | Built by | Status |
|---|---|---|---|---|
| `idioms/`  | `kb` (default) | hand-written Go idioms for buildable code | author | seed |
| `stdlib/`  | `stdlib`       | the Go standard library API reference (176 packages) | `tools/kb_ingest_godoc.sh` (offline `go doc -all`) | built |
| `patterns/`  | (planned) | curated complete Go units (worker pool, two-heap median, table-driven test, ...) | author + evidence | planned |
| `pitfalls/`  | (planned) | builds-but-wrong traps (unused imports, loop-var capture, nil-map write) | evidence from `runs/` | planned |
| `guidelines/`| (planned) | Effective Go / Code Review Comments / Go Proverbs, split by heading | ingest (split) | planned |
| `spec/`      | (planned) | the Go language spec, split by section | ingest (split) | planned |

The `stdlib` library is the Go analog of the cpp ratchet's `cppref` - except `go doc` generates it
locally from the installed toolchain, so there is nothing to scrape and it always matches your Go
version. Regenerate after a toolchain upgrade.

## Build / rebuild

```
tools/kb_ingest_godoc.sh kb/stdlib     # (re)generate the stdlib library, offline, deterministic
ratchet index kb/stdlib                # (re)build its routing manifest (run after any kb/<lib> edit)
ratchet index kb/idioms
```

Add a library: create `kb/<lib>/` with one-topic-per-file markdown, register it in `ratchet.json`
`knowledgeBases[]` (and `requirements[]`), then `ratchet index kb/<lib>`. Wire a flow to it with a
`{ "search": "<lib>", "query": "{{ ... }}", "k": N, "as": "refs" }` binding (multi-library plan-routed
retrieval, cpp-style, is the next phase - see `../ROADMAP.md`).
