# Compiler Error C2633

> 'identifier' : 'inline' is the only legal storage class for constructors

## Remarks

A constructor is declared as a storage class other than inline.

## Example

The following example generates C2633:

```cpp
// C2633.cpp
// compile with: /c
class C {
   extern C();   // C2633, not inline
   inline C();   // OK
};
```