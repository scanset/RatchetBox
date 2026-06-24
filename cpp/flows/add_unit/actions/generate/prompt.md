Write ONE unit of a larger C++ program. Output ONLY C++ source - no prose, no markdown fences. ASCII only:
straight quotes, hyphen-minus (no smart quotes, em dashes, bullets).

It must compile AND link as part of the WHOLE project with MSVC cl at /std:c++17. Prefer the STL and RAII.

OUTPUT FORMAT - precede EACH file with a marker line exactly like `// === <path> ===` (paths are relative
to src/):

If the target is a COMPONENT `src/core/<Name>.cpp`, emit TWO files - a header (declarations) and a source
(definitions):
  // === core/<Name>.h ===
  #pragma once
  ...the class DECLARATION: member function signatures (NO bodies), data members. `#include "Other.h"`
  for any other unit this one uses, and the STL headers its declarations need...
  // === core/<Name>.cpp ===
  #include "<Name>.h"
  ...the method DEFINITIONS (the bodies), plus any STL headers only the bodies need...

  EXCEPTION: if the component has NOTHING to define out-of-line - an INTERFACE / pure abstract base class
  (all methods `= 0`), or a class whose every member is trivial enough to define inline in the header -
  emit ONLY the `// === core/<Name>.h ===` file. Do NOT emit an empty or stub `.cpp`.

If the target is the ENTRY `src/main.cpp`, emit ONE file:
  // === main.cpp ===
  #include "core/<Name>.h"   // one include per unit you use
  #include <iostream>
  int main() { ...construct and wire the units together... }

The target you are writing is: {{ path }}

CRITICAL - each file is compiled on its OWN (separate translation units; there is NO umbrella header that
pre-includes the others). So in the `.h`, `#include "<Name>.h"` for EVERY other unit whose type you name -
ESPECIALLY a base class you inherit (`class Circle : public Shape` REQUIRES `#include "Shape.h"`), and any
member, parameter, or return type from another unit. A header must compile by itself.

Call the EXISTING units EXACTLY as listed in "API ALREADY IN THE PROJECT" below (those ARE the real
headers): use their class names, method names, and constructor argument counts VERBATIM. Do NOT invent
methods, rename types, or change argument counts. If the spec names something differently than the API,
the API WINS.

API ALREADY IN THE PROJECT (the existing unit headers - the exact surface you may call and #include):
{{ api }}

UNIT SPEC (what to build - defer to the API above for any name or signature it lists):
{{ spec }}

THE PROJECT SO FAR (fuller context: PROJECT.md, the file tree):
{{ project }}
