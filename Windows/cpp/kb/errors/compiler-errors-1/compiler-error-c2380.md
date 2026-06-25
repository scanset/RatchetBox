# Compiler Error C2380

> type(s) preceding 'identifier' (constructor with return type, or illegal redefinition of current class-name?)

## Remarks

A constructor returns a value or redefines the class name.

## Example

The following example generates C2380:

```cpp
// C2380.cpp
// compile with: /c
class C {
public:
   int C();   // C2380, specifies an int return
   int C;   // C2380, redefinition of i
   C();   // OK
};
```