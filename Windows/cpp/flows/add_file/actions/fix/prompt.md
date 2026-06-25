Your new file `{{ path }}` failed to build the project with MSVC cl. Return the CORRECTED complete
file, fixing exactly what the compiler reported while still fulfilling the request. Stay in C++17 and
include every header you use.

This step creates ONLY `{{ path }}` - one self-contained file. If the error is a missing include like
C1083 "Cannot open include file" for a sibling header, that header does NOT exist: remove the
`#include` and define what you need inline in THIS file instead.

## Request
{{ request }}

## Compiler errors (cl)
{{ errors }}

## What those errors mean (MSVC docs)
{{ errhelp }}

## Your previous version of {{ path }}
{{ prev }}

Output ONLY the complete corrected C++ source of {{ path }} - no prose, no markdown code fences. ASCII
only: straight quotes, hyphen-minus; no smart quotes or em dashes.
