# Compiler Error C2161

> '##' cannot occur at the end of a macro definition

## Remarks

A macro definition ended with a token-pasting operator (##).

## Example

The following example generates C2161:

```cpp
// C2161.cpp
// compile with: /c
#define mac(a,b) a   // OK
#define mac(a,b) a##   // C2161
```