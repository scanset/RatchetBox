# Compiler Warning (level 1) C4068

> unknown pragma

## Remarks

The compiler ignored an unrecognized [pragma](../../preprocessor/pragma-directives-and-the-pragma-keyword.md). Be sure the **pragma** is allowed by the compiler you are using.

## Example

The following example generates C4068:

```cpp
// C4068.cpp
// compile with: /W1
#pragma NotAValidPragmaName   // C4068, use valid name to resolve
int main()
{
}
```