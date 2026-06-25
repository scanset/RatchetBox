You are about to edit the C++ file `{{ path }}` to apply the change below. First decide which reference
sources the edit needs and write ONE focused search query for each field. Leave a field as an empty
string "" if that source is not relevant - do not force it.

- cppref_q: standard-library headers, APIs, or data structures the change will use (e.g.
  "std::sort comparator", "std::optional"). Often needed.
- patterns_q: a design pattern relevant to the refactor, if any (e.g. "strategy", "factory method").
  Empty for small local edits.
- win32_q: a Windows API to look up, ONLY if the change is Windows-specific. Empty otherwise.
- cppdocs_q: MSVC compiler, build, or C-runtime specifics, if relevant. Empty unless the change
  involves toolchain specifics.

## Change requested
{{ request }}

## Current contents of {{ path }}
{{ current }}
