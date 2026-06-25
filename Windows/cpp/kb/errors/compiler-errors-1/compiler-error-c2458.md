# Compiler Error C2458

> 'identifier' : redefinition within definition

## Remarks

A class, structure, union, or enumeration is redefined in its own declaration.

## Example

The following example generates C2458:

```cpp
// C2458.cpp
class C {
   enum i { C };   // C2458
};
```