<p align="center"><img src="ratchet.png" alt="Ratchet" width="320"></p>

# RatchetBox

A collection of ready-made **ratchets** for the [Ratchet](https://github.com/CurtisSlone/Ratchet)
engine - the Windows host that runs a small local model as a *constrained proposer*, gated by a
deterministic Oracle. Ratchet is domain-agnostic; the domain lives in a ratchet. This repo is a box of
them.

> **New here?** A *ratchet* is a self-contained directory (`ratchet.json` + `flows/`, `tools/`, `kb/`)
> that you point the engine at: `ratchet <dir>`. The engine and how it works live in the
> [Ratchet repo](https://github.com/CurtisSlone/Ratchet).

## The ratchets

| Ratchet | What it builds | Highlights |
| --- | --- | --- |
| **`dotnet4-x`** | Windows C# / PowerShell, in-box `csc` (C# 5) | `csharp`/`winforms`/`powershell` one-offs + a project lifecycle (`new_project` -> `add_file`/`edit_file` -> build) + **spec-to-code composition** (`compose` a whole multi-file system from a dir of `.spec` files); `transcripts/` has end-to-end build transcripts |
| **`cpp`** | C++ with MSVC `cl` (vcvars32; STL + Win32) | plan-routed retrieval over 7 knowledge bases, generate-compile-repair, a full project lifecycle, native-app linking, vcpkg packages + **spec-to-code composition** (`.h`/`.cpp` units); `transcripts/` has a worked build |
| **`template`** | (nothing - a skeleton to copy) | the lifecycle + composition skeleton: working flows with the domain-specific tools as `CHANGE_ME` stubs to fill in |

## Quick start

```
# 1. Get the engine (see its README for build + Ollama setup)
git clone https://github.com/CurtisSlone/Ratchet

# 2. Get this box of ratchets, alongside it
git clone https://github.com/CurtisSlone/RatchetBox

# 3. Open one (from the Ratchet repo)
cd Ratchet
.\ratchet.cmd ..\RatchetBox\dotnet4-x        # or cpp, or template

# 4. Sanity-check a ratchet's toolchain first (optional)
.\ratchet.cmd doctor ..\RatchetBox\cpp
```

Each ratchet has its own `README.md` (what it does + how to drive it) and `AGENTS.md` (orientation for
AI agents). Start there. `dotnet4-x` and `cpp` also carry a `transcripts/` folder with real end-to-end
build transcripts - the fastest way to see what driving the ratchet looks like.

## Make your own

Copy `template`, rename it, edit its `ratchet.json`, implement the `CHANGE_ME` tools, and fill `kb/` +
the flow prompts. The full authoring contract is in the engine's docs (`docs/how-to/build-a-ratchet.md`,
`docs/how-to/author-flows.md`, `docs/how-to/author-tools.md`, `docs/how-to/compose-from-specs.md`).

## License

MIT - see [LICENSE](LICENSE).
