# Compiler Error C2351

> obsolete C++ constructor initialization syntax

## Remarks

In a new-style initialization list for a constructor, you must explicitly name each direct base class, even if it is the only base class.

## Example

The following example generates C2351:

```cpp
// C2351.cpp
// compile with: /c
class B {
public:
   B() : () {}   // C2351
   B() {}   // OK
};
```