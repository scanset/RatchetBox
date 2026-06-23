# ROBOTS.md - the template ratchet (for AI agents)

The empty skeleton to copy when starting a new ratchet for the
[Ratchet](https://github.com/CurtisSlone/Ratchet) engine. Humans: see [README.md](README.md). Layout:
[STRUCTURE.md](STRUCTURE.md).

## To create a new ratchet

1. Copy this directory; rename it.
2. Edit `ratchet.json`: `name`, `domain`, `models` (must exist in Ollama), and `requirements` (what
   `ratchet doctor` validates).
3. Replace the example in each bucket with your domain, then remove the placeholders.

## The buckets

- `flows/` - action chains. The example `draft` is the canonical **generate -> check (Oracle) -> repair
  -> exit** shape. A chain is `flows/<chain>/chain.json` + `actions/<node>/{action.json, prompt.md}`.
  Node kinds: `action`, `generate` (add `output_schema` for structured JSON), `ai_branch`,
  `summarizer`, `exit`. Each node sees only its declared, scoped inputs (Context Binding).
- `tools/` - scripts declared in `tools/manifest.json` (command, inputSchema, optional `stdin`,
  timeout). Exit code is the Oracle verdict. The example is `example_check.ps1`.
- `kb/` - one topic per markdown file under `kb/<lib>/`; `ratchet index <dir>\kb` builds the manifest;
  register libraries in `ratchet.json` `knowledgeBases[]`.
- `schemas/` + `samples/` - optional TSV oracle (a `<table>.json` schema + `<table>.txt` rows).

## Conventions

- Keep domain specifics here, never in the engine - new capability = a new flow or tool, no host change.
- stdin payloads to tools arrive with a UTF-8 BOM; strip it (read raw bytes).
- Verify: `ratchet validate-flow <dir>` (lint chains) and `ratchet doctor <dir>` (preflight tools).

Full authoring contract: the engine's `docs/ratchets.md`, `docs/authoring-flows.md`,
`docs/authoring-tools.md`, `docs/context-binding.md`.
