# Compiler Error C2929

> 'identifier' : explicit instantiation; cannot explicitly force and suppress instantiation of template-class member

## Remarks

You cannot explicitly instantiate an identifier while preventing it from being instantiated.

## Example

The following example generates C2929:

```cpp
// C2929.cpp
// compile with: /c
template<typename T>
class A {
public:
   A() {}
};

template A<int>::A();

extern template A<int>::A();   // C2929
```