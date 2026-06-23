# Compiler Error C2369

> 'array' : redefinition; different subscripts

## Remarks

The array is already declared with a different subscript.

## Example

The following example generates C2369:

```cpp
// C2369.cpp
// compile with: /c
int a[10];
int a[20];   // C2369
int b[20];   // OK
```