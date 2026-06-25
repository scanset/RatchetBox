Your edited `{{ path }}` failed to build the project with MSVC cl. Return the CORRECTED complete file,
fixing exactly what the compiler reported while still applying the original change. Stay in C++17 and
keep every `#include` the file needs.

This step edits ONLY `{{ path }}`. If the error is a missing include like C1083 "Cannot open include
file" for a sibling header, that header does NOT exist: remove the `#include` and define what you need
inline in THIS file instead.

## Change requested
{{ request }}

## Compiler errors (cl)
{{ errors }}

## What those errors mean (MSVC docs)
{{ errhelp }}

## Your previous version of {{ path }}
{{ prev }}

Output ONLY the full corrected C++ source of {{ path }} - no prose, no markdown code fences. ASCII
only: straight quotes, hyphen-minus; no smart quotes or em dashes.
