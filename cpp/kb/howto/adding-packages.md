# Adding a library or package to a Ratchet C++ project

How dependencies work in this instance, and the exact steps to add one so it compiles and links.

## The model

There is no CMake or MSBuild here. `build_project` runs MSVC `cl` over `src/**/*.cpp` and reads four
fields from the project's `project.json`:

- `includes` - extra header search dirs, passed as `/I`.
- `libdirs`  - extra library search dirs, passed as `/LIBPATH`.
- `libs`     - import libraries to link, e.g. `user32.lib`, `fmt.lib`.
- `subsystem` - `console` (int main) or `windows` (WinMain).

So "adding a library" means: make its headers reachable (`includes`), make its `.lib` reachable
(`libdirs`), and link it (`libs`). Then `#include` the header in your code. There are three cases.

## Case 1 - it ships in the Windows SDK (no install)

The SDK already has the GUI/graphics/media/networking libraries: `user32 gdi32 comctl32 gdiplus uxtheme`
(widgets), `d2d1 dwrite windowscodecs dwmapi` (modern 2D + text + images), `d3d11 d3d12 dxgi
d3dcompiler` (GPU), `mfplat mf` (media), `ws2_32 winhttp` (networking). Headers and libs are already on
the default search path, so you only declare the link:

    tools/link_libs.ps1 -Proj MyApp -Libs "d2d1.lib dwrite.lib user32.lib"

Then `#include <d2d1.h>` and build. Nothing to download.

## Case 2 - a third-party library, via vcpkg (the package getter)

Use the `add_package` tool (run it from `/do`). It provisions the library with vcpkg and writes the
include/lib dirs (and any libs you name) into `project.json` for you.

1. One-time vcpkg bootstrap (this downloads from the official MS repo). Run the Ratchet tool:
   - `/do bootstrap_vcpkg`  (clones microsoft/vcpkg to C:\vcpkg, bootstraps it, sets VCPKG_ROOT)
2. Add the package (note the `x86-windows` triplet - this instance builds 32-bit via vcvars32):
   - header-only port (e.g. JSON): `add_package -Proj MyApp -Name nlohmann-json`
   - port with a lib (e.g. fmt): `add_package -Proj MyApp -Name fmt -Libs "fmt.lib"`
3. `#include` the header (`#include <fmt/core.h>`) and build with `build_project`.

`build_project` compiles with `/utf-8` (modern libs like fmt require it) and, because the default
vcpkg triplet builds DYNAMIC libraries, automatically copies the needed runtime DLLs (from
`installed\x86-windows\bin`) next to your exe so it runs without a DLL-not-found error.

vcpkg builds from source for your toolset, so small libs (fmt, nlohmann-json, sqlite3) are quick; large
ones (boost, opencv) are slow and the x86 triplet is less tested than x64. Stay in vcpkg *classic mode*
(what `add_package` uses) - do not turn on manifest/CMake integration, which would pull in the CMake
toolchain this instance deliberately avoids.

## Case 3 - vendored source (e.g. Dear ImGui)

For header+source libraries with no build system, just drop the sources into the project and compile
them with everything else:

1. Copy the library's `.cpp`/`.h` into `src/` (e.g. `src/vendor/imgui/`).
2. If it has headers in a sibling dir, add that dir to `includes` (edit project.json or use add_package
   for the dir). For a flat drop under `src/` no include dir is needed.
3. Link any backend libs it needs, e.g. `link_libs -Proj MyApp -Libs "d3d11.lib dxgi.lib"`.
4. `#include` and build. `build_project` already compiles every `.cpp` under `src/`.

## What NOT to use

Qt, GTK, and wxWidgets do not fit this instance: they need code generation (Qt's moc) and/or their own
build systems (qmake/CMake/MSBuild), which the `cl`-over-`src` model has no step for. Use the native
SDK stack (Case 1) for GUIs, or a source-droppable library like Dear ImGui (Case 3).

## Quick reference

| Source | Tool | Result in project.json |
|--------|------|------------------------|
| Win SDK lib | `link_libs` | `libs` |
| vcpkg port  | `add_package` | `includes` + `libdirs` (+ `libs`) |
| vendored source | copy into `src/` (+ `link_libs` for backends) | sources compiled directly |
