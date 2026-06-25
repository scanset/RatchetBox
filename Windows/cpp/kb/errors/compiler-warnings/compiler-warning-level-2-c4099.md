# Compiler Warning (level 2) C4099

> '*identifier*': type name first seen using '*object_type1*' now seen using '*object_type2*'

## Remarks

An object declared as a structure is defined as a class, or an object declared as a class is defined as a structure. The compiler uses the type given in the definition.

## Example

The following example generates C4099.

```cpp
// C4099.cpp
// compile with: /W2 /c
struct A;
class A {};   // C4099, use different identifier or use same object type
```