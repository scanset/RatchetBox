You are about to write a NEW C++ file `{{ path }}` for a project, fulfilling the request below. First
decide which reference sources you need and write ONE focused search query for each field. Leave a
field as an empty string "" if that source is not relevant - do not force it.

- cppref_q: standard-library headers, APIs, and data structures the file will use (e.g.
  "std::vector sort accumulate", "std::unordered_map"). Almost always needed.
- patterns_q: a design pattern to apply, if the file's structure calls for one (e.g. "factory
  method", "observer", "strategy", "RAII wrapper"). Empty for small or procedural files.
- win32_q: a Windows API to look up, ONLY if the file is Windows-specific (e.g. "CreateFile
  ReadFile", "CreateWindowEx"). Empty for portable / standard-library-only files.
- cppdocs_q: MSVC compiler, build, or C-runtime specifics, if relevant (e.g. "fopen_s",
  "_CRT_SECURE_NO_WARNINGS"). Empty unless the file involves toolchain specifics.

## Request
{{ request }}
