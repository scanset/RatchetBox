# Compiler Error C2372

> '*identifier*' : redefinition; different types of indirection

## Remarks

The identifier is already defined with a different derived type.

## Example

The following example generates C2372:

```cpp
// C2372.cpp
// compile with: /c
extern int *fp;
extern int fp[];   // C2372
extern int fp2[];   // OK
```