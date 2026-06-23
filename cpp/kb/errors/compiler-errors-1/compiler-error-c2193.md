# Compiler Error C2193

> 'identifier' : already in a segment

## Remarks

A function was placed in two different segments using `alloc_text` and `code_seg` pragmas.

## Example

The following example generates C2193:

```cpp
// C2193.cpp
// compile with: /c
extern "C" void MYFUNCTION();
#pragma alloc_text(MYCODE, MYFUNCTION)
#pragma code_seg("MYCODE2")
extern "C" void MYFUNCTION() {}   // C2193
extern "C" void MYFUNCTION2() {}
```