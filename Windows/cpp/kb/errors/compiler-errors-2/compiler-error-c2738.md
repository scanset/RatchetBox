# Compiler Error C2738

> 'declaration' : is ambiguous or is not a member of 'type'

## Remarks

A function was declared incorrectly.

## Example

The following example generates C2738:

```cpp
// C2738.cpp
struct A {
   template <class T> operator T*();
   // template <class T> operator T();
};

template <>
A::operator int() {   // C2738

// try the following line instead
// A::operator int*() {

// or use the commented member declaration

   return 0;
}
```