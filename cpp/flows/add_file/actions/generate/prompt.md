Write a NEW C++ file `{{ path }}` for the project, fulfilling the request below. It must compile when
built as part of the WHOLE project with MSVC cl at /std:c++17.

This step creates exactly ONE file: `{{ path }}`. Make it SELF-CONTAINED:
- Include the STL headers you use, and project headers that ALREADY exist - but do NOT `#include` a
  sibling header you are not creating in this step (it does not exist yet and the build will fail).
- If `{{ path }}` is a .cpp that needs declarations, define everything it needs inside THIS file.
- If it is a header (.h/.hpp), put the declarations (and any inline/template definitions) here.
Prefer the STL and RAII; keep pure logic free of I/O where you can.

Some reference sections below may be empty - that just means they were not relevant.

## Request
{{ request }}

## Reference (cppreference)
{{ refs }}

## Design pattern (if any applies)
{{ pattern }}

## Windows API (if Windows-specific)
{{ winapi }}

## MSVC compiler / runtime notes (if relevant)
{{ tooling }}

## Idioms (C++ Core Guidelines)
{{ idioms }}

Output ONLY the complete C++ source of {{ path }} - no prose, no markdown code fences. ASCII only:
straight quotes, hyphen-minus; no smart quotes, em dashes, or bullets.
