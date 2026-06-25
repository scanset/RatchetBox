# Compiler Warning (level 1) C4659

> #pragma 'pragma' : use of reserved segment 'segment' has undefined behavior, use #pragma comment(linker, ...)

## Remarks

The .drectve option was used to pass an option to the linker. Instead use pragma [comment](../../preprocessor/comment-c-cpp.md) for passing a linker option.

## Example

The following example generates C4659:

```cpp
// C4659.cpp
// compile with: /W1 /LD
#pragma code_seg(".drectve")   // C4659
```