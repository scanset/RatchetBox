# Compiler Error C2724

> 'identifier' : 'static' should not be used on member functions defined at file scope

## Remarks

Static member functions should be declared with external linkage.

## Example

The following example generates C2724:

```cpp
// C2724.cpp
class C {
   static void func();
};

static void C::func(){}   // C2724
// try the following line instead
// void C::func(){}
```