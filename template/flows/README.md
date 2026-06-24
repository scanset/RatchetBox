# flows/

Action chains. Each chain is a directory:

```
<chain>/
  chain.json          { id, summary, entry, inputs?, budgets, nodes[] }
  actions/<node>/
    action.json       { id, kind, inputs[], edges }
    prompt.md         model instructions ({{ slot }}) - for generate / ai_branch
```

Node `kind`s: `action` (run a tools/ script + validators -> on_success/on_failure), `generate`
(free text via the generate seat -> on_success/on_failure), `ai_branch` (slots -> prompt -> enum
`next` -> transitions), `summarizer`, `foreach` (sequential sub-chain fan-out, used by `compose`),
`exit` (outcome).

Input binding sources (a node sees ONLY its declared inputs): `from` a prior node or a run seed
(`$input`, `$workspace`, or a chain-declared `inputs` slot); `ref` a fixed kb entry; `search` a kb
query (templated). Cap injected slots with `max_chars`.

Run with `/flow <chain> <input>` (or let `/route` pick one by `summary`). Lint with
`ratchet validate-flow <dir>`. This template ships `add_file`/`edit_file` (the file lifecycle),
`compose`/`add_unit` (multi-spec composition), `generate` (a one-off snippet: generate -> single-file
`check` -> repair) and `answer` (grounded Q&A from the kb).
