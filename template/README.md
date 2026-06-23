# template - a starter ratchet

The empty skeleton to copy when starting a new ratchet for the
[Ratchet](https://github.com/CurtisSlone/Ratchet) engine. One `ratchet.json` plus four buckets - and a
single minimal, **working** example in each that you replace with your own domain.

## Start a new ratchet

1. Copy this folder and rename it: `xcopy /E /I template my-ratchet`.
2. Edit `ratchet.json`: set `name` and `domain`, point `models` at models you have in Ollama, and
   adjust `requirements` (what `ratchet doctor` checks).
3. Replace the example content:
   - drop reference docs into `kb/<lib>/`, then `ratchet index my-ratchet\kb` to build the routing index;
   - declare your tools in `tools/manifest.json` and drop their scripts in `tools/`;
   - author chains under `flows/<chain>/` (copy the `draft` example);
   - add `schemas/<table>.json` + `samples/<table>.txt` only if your domain has data tables.
4. Open it: `ratchet my-ratchet`. Verify: `ratchet validate-flow my-ratchet` and `ratchet doctor my-ratchet`.
5. Delete the placeholders once you have your own: `flows/draft/`, `tools/example_check.ps1`,
   `kb/reference/example-topic.md`, `schemas/example.*`, `samples/example.*`.

## What's inside (all replaceable examples)

- `flows/draft/` - the canonical chain shape: **generate** (grounded in `kb`) -> **check** (the Oracle)
  -> **repair** once -> **exit**. Copy this for your own chains.
- `tools/example_check.ps1` + `tools/manifest.json` - the example Oracle the chain calls (exit code =
  verdict).
- `kb/reference/example-topic.md` + `kb/manifest.json` - one example indexed entry.
- `schemas/example.json` + `samples/example.txt` - an example TSV oracle table.

## The idea

A ratchet is just data; the engine never changes per domain. The model proposes into a chain's slots, a
deterministic Oracle (a compiler, a parser, a validator) accepts or rejects, and the chain advances only
on a pass - like a ratchet that turns one way.

See `STRUCTURE.md` for the full layout, and the engine's docs (`docs/ratchets.md`,
`docs/authoring-flows.md`, `docs/authoring-tools.md`) for the complete authoring contract.
