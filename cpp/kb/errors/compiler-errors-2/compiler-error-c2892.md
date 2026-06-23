# Compiler Error C2892

> local class shall not have member templates

## Remarks

Templated member functions are not valid in a class that is defined in a function.

## Example

The following example generates C2892:

```cpp
// C2892.cpp
int main() {
   struct local {
      template<class T>   // C2892
      void f() {}
   };
}
```