# Compiler Error C2208

> 'type' : no members defined using this type

## Remarks

An identifier resolving to a type name is in an aggregate declaration, but the compiler cannot declare a member.

## Example

The following example generates C2208:

```cpp
// C2208.cpp
class C {
   C;   // C2208
   C(){}   // OK
};
```