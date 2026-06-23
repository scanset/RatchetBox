# Compiler Error C2256

> illegal use of friend specifier on 'function'

## Remarks

A destructor or constructor cannot be specified as a [friend](../../cpp/friend-cpp.md).

## Example

The following example generates C2256:

```cpp
// C2256.cpp
// compile with: /c
class C {
public:
   friend ~C();   // C2256
   ~C();   // OK
};
```