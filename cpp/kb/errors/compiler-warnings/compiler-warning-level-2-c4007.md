# Compiler Warning (level 3) C4007

> '*function*': must be '*attribute*'

## Remarks

A required attribute for a function isn't explicitly stated. For example, the function `main` must have the `__cdecl` attribute. The compiler forces the attribute.