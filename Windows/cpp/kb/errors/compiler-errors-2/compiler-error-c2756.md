# Compiler Error C2756

> 'template type' : default template arguments not allowed on a partial specialization

## Remarks

The template for a partial specialization may not contain a default argument.

## Example

The following example generates C2756 and shows how to fix it:

```cpp
// C2756.cpp
template <class T>
struct S {};

template <class T=int>
// try the following line instead
// template <class T>
struct S<T*> {};   // C2756
```