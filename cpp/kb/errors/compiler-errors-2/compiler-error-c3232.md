# Compiler Error C3232

> 'param' : a generic type parameter cannot be used in a qualified name

## Remarks

A generic type parameter was used incorrectly.

## Example

The following example generates C3232:

```cpp
// C3232.cpp
// compile with: /clr
generic <class T>
ref class C {
   typename T::TYPE t;   // C3232
};
```