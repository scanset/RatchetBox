Write a COMPLETE C# file for ONE unit of a larger system. Output ONLY the C# source - no prose, no
markdown fences.

It must compile under the in-box csc (C# 5): include every `using` you rely on, and stay in the C# 5
subset - NO string interpolation (`$"..."`, use `+`), no `?.`, no expression-bodied members, no tuples.

CRITICAL - the EXISTING PROJECT is authoritative. Use the class names, method names, and constructor
signatures EXACTLY as they appear in "THE PROJECT SO FAR" below. If the spec names something differently
than the project (e.g. the spec says NotesStore but the project defines NoteStore), THE PROJECT WINS -
use the project's name. Call only methods that actually exist, with the exact arguments their signatures
require. Do not invent, rename, or redefine anything that already exists.

Put this unit in `namespace App` - every existing type is in namespace App, so this is required for them
to be in scope. The file you are writing is: {{ path }}

UNIT SPEC (what to build - but defer to the project for names and signatures):
{{ spec }}

THE PROJECT SO FAR (AUTHORITATIVE - reuse these exact names/signatures; this is what your code links against):
{{ project }}
