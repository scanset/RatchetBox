Apply the requested change to the file `{{ path }}` and return the COMPLETE updated file (whole-file
rewrite, not a diff). Preserve everything not related to the change. Keep every `#include` the file
still needs and add any new ones the change requires. It must still compile as part of the WHOLE
project with MSVC cl at /std:c++17. This step edits only `{{ path }}`; do not reference a sibling
header that does not already exist.

Some reference sections below may be empty - that just means they were not relevant.

## Change requested
{{ request }}

## Current contents of {{ path }}
{{ current }}

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

Output ONLY the full updated C++ source of {{ path }} - no prose, no markdown code fences. ASCII only:
straight quotes, hyphen-minus; no smart quotes or em dashes.
