# ROBOTS.md - the cpp ratchet (for AI agents)

A C++ ratchet for the [Ratchet](https://github.com/CurtisSlone/Ratchet) engine: the local model writes
C++, MSVC `cl` is the Oracle. Humans: see [README.md](README.md). Operating rules: [SYSTEM.md](SYSTEM.md).
Layout: [STRUCTURE.md](STRUCTURE.md).

## Flows

- **`cpp`** - one-off generate -> compile-check (`cl /Zs`) -> repair x2. No project.
- **`add_file`** - plan -> generate a new file -> stage + build the whole project -> repair x2 -> register.
- **`edit_file`** - read the file -> plan -> whole-file rewrite -> stage + build -> repair x2 -> log.
- **`answer`** - plan -> retrieve -> explain. Grounded Q&A, no build.

Every generating flow starts with a **plan** node: a `generate` node with an `output_schema` that emits
one search query per knowledge base (empty = skip). Downstream `search` bindings pull each via the
binding `path` (a JSON pointer), so retrieval is routed to exactly the KBs the task needs.

## Knowledge bases

`cppref` (stdlib/language), `guidelines` (Core Guidelines), `patterns` (design patterns), `errors`
(MSVC diagnostics, used in repair), `cppdocs` (MSVC compiler/CRT/build), `win32` (curated desktop +
DirectX/MediaFoundation/Winsock), `howto` (using this ratchet - adding packages). After editing a KB,
`ratchet index <this>\kb\<lib>`.

## Tools

`cl_check` (single-unit oracle), `new_project` (console|win32 scaffold), `build_project` (compile +
link -> exe; honors `subsystem`/`libs`/`includes`/`libdirs` from `project.json`; applocal-deploys vcpkg
DLLs; compiles `/utf-8`), `stage_and_build` (write + build, the add/edit oracle), `link_libs` (declare
SDK libs), `bootstrap_vcpkg` + `add_package` (third-party libs via vcpkg, x86-windows triplet),
`doctor_cl` (the `ratchet doctor` probe for cl), plus the language-agnostic `read_file`/`read_project`/
`register_file`/`log_edit`/`run_app`.

## Hard constraints (these bite)

- **C++17, MSVC `cl`** (32-bit via `vcvars32`). Generated code must compile; the repair loop feeds `cl`
  errors back. Modern libs (fmt) need `/utf-8` - `build_project`/`cl_check` already pass it.
- **stdin to tools** arrives with a UTF-8 BOM - strip it (read raw bytes), and feed a child process's
  stdin from a temp file, not the managed pipe (it garbles native input). See `run_app`.
- **PowerShell 5.1:** don't pipe native `git`/`cmd` through `2>&1` under `ErrorActionPreference=Stop`
  (wraps stderr as a terminating error); a `[type]`-constrained param coerces later same-named
  assignments (name parsed objects distinctly).
- **Smart App Control** gates *running* native exes per-binary; the **build** (`build_project` exit 0)
  is the deterministic verification.

## Verify

```
ratchet validate-flow <this>     # lint all four chains
ratchet doctor <this>            # preflight cl, SDK, Ollama+models, KB integrity (requirements in ratchet.json)
```
