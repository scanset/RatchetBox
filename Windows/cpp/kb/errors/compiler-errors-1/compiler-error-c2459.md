# Compiler Error C2459

> 'identifier' : is being defined; cannot add as an anonymous member

## Remarks

A class, structure, or union is redefined in its own scope by a member of an anonymous union.

## Example

The following example generates C2459:

```cpp
// C2459.cpp
// compile with: /c
class C {
   union { int C; };   // C2459
   union { int D; };
};
```