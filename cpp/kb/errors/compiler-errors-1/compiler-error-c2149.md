# Compiler Error C2149

> 'identifier' : named bit field cannot have zero width

## Remarks

Bit fields can have zero width only if unnamed.

## Example

The following example generates C2149:

```cpp
// C2149.cpp
// compile with: /c
struct C {
   int i : 0;   // C2149
   int j : 2;   // OK
};
```