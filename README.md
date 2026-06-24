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
| **`dotnet4-x`** | Windows C# / PowerShell, in-box `csc` (C# 5) | `csharp`/`winforms`/`powershell` one-offs + a project lifecycle (`new_project` -> `add_file`/`edit_file` -> build) + **spec-to-code composition** (`compose` a whole multi-file system from a dir of `.spec` files); `Tests/` has transcripts incl. a concurrent PoS capstone |
| **`cpp`** | C++ with MSVC `cl` (vcvars32; STL + Win32) | plan-routed retrieval over 7 knowledge bases, generate-compile-repair, a full project lifecycle, native-app linking, vcpkg packages, `ratchet doctor` requirements |
| **`template`** | (nothing - a skeleton to copy) | the minimal, self-documented starting point for a new ratchet |

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

Each ratchet has its own `README.md` (what it does + how to drive it) and `ROBOTS.md` (orientation for
AI agents). Start there.

## Make your own

Copy `template`, rename it, edit its `ratchet.json`, and fill `kb/` + `flows/` + `tools/`. The full
authoring contract is in the engine's docs (`docs/ratchets.md`, `docs/authoring-flows.md`,
`docs/authoring-tools.md`).

## License

MIT - see [LICENSE](LICENSE).
