# Compiler Error C2611

> 'token' : illegal following '~' (expected identifier)

## Remarks

The token is not an identifier.

## Example

The following example generates C2611:

```cpp
// C2611.cpp
// compile with: /c
class C {
   C::~operator int();   // C2611
   ~C();   // OK
};
```