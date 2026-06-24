# AGENTS.md - orientation for AI agents

You are an AI agent working in **RatchetBox**, a collection of *ratchets* for the
[Ratchet](https://github.com/CurtisSlone/Ratchet) engine. Humans: see [README.md](README.md).

## What this repo is (and is not)

- **Is:** domain data the engine loads - each top-level directory is a ratchet (`ratchet.json` +
  `flows/`, `tools/`, `kb/`, optionally `schemas/`+`samples/` and `workspaces/`). Pure flows, scripts,
  knowledge, prompts.
- **Is not:** the engine. The host binary (`ratchet.exe`), the chain engine, the Oracle mechanism, and
  the generic verbs live in the separate **Ratchet** repo. Never add engine/C# code here; if a ratchet
  needs a new capability, add a **flow or tool** to that ratchet, not a host command.

## The ratchets

| Dir | `ratchet.json` name | Domain |
| --- | --- | --- |
| `dotnet4-x` | `dotnet` | Windows C# / PowerShell, in-box `csc` (C# 5) |
| `cpp` | `cpp` | C++ with MSVC `cl` (vcvars32; STL + Win32) |
| `template` | `CHANGE_ME` | empty skeleton to copy |

Each ratchet carries its own `README.md` (drive it), `AGENTS.md` (agent orientation - start here), and
usually `SYSTEM.md` (the operating rules / hard constraints) + `STRUCTURE.md` (the layout). **Read a
ratchet's `SYSTEM.md` before authoring or generating in it** - it states the language/compiler limits the
Oracle enforces (e.g. C# 5 for `dotnet`, `/std:c++17` + MSVC for `cpp`). `dotnet4-x` and `cpp` also carry
a `transcripts/` folder - real end-to-end build transcripts (the fastest way to see what driving the
ratchet looks like).

## Working in a ratchet

- **Run / drive:** `ratchet <this-repo>\<ratchet>` (from a Ratchet checkout). Plain text chats;
  `/flow`, `/do`, `/search`, `/ws` drive the work. One-shot: `ratchet flow <ratchet> <chain> [input]`.
- **Author a flow:** a chain is a directory `flows/<chain>/` with `chain.json` + `actions/<node>/`
  (`action.json` + `prompt.md`). Node kinds: `action`, `generate` (add `output_schema` for structured
  JSON), `ai_branch`, `summarizer`, `foreach` (sequential sub-chain fan-out, used by `compose`), `exit`.
  Each node sees only its declared, scoped inputs.
- **Author a tool:** a script in `tools/` declared in `tools/manifest.json` (command, inputSchema,
  optional `stdin`, timeout). The exit code is the Oracle verdict.
- **Compose a system:** drop `.spec` files in `<ws>/specs/` and run `ratchet flow <ratchet> compose
  --ws <project> ""`. The `dotnet4-x` and `cpp` ratchets implement it; the `template` ships it as stubs.
- **Knowledge:** one topic per markdown file under `kb/<lib>/`; `ratchet index <ratchet>\kb` builds the
  manifest. Register libraries in `ratchet.json` `knowledgeBases[]`.

The full authoring contract is in the engine's docs (`docs/how-to/build-a-ratchet.md`,
`docs/how-to/author-flows.md`, `docs/how-to/author-tools.md`, `docs/how-to/compose-from-specs.md`,
`docs/concepts/context-binding.md`).

## Verify (after editing a ratchet)

```
ratchet validate-flow <ratchet>          # lint every chain (node kinds, fields, unknown tools, reachability)
ratchet doctor <ratchet>                 # preflight the tools the ratchet declares it needs
```

## Style

Plain and grounded: no emoji, no em dashes, no hype. Verify, don't assert - compile-/run-verify and
show evidence; "compiles" is not "behavior-correct."
