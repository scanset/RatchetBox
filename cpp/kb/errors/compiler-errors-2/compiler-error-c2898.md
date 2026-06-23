# Compiler Error C2898

> 'declaration' : member function templates cannot be virtual

## Example

The following example generates C2898:

```cpp
// C2898.cpp
// compile with: /c
class X {
public:
   template<typename T> virtual void f(T t) {}   // C2898
};
```