# Compiler Error C3640

> 'member' : a referenced or virtual member function of a local class must be defined

## Remarks

The compiler requires certain functions to be defined.

## Example

The following example generates C3640:

```cpp
// C3640.cpp
void f()
{
   struct S
   {
      virtual void f1();   // C3640
      // Try the following line instead:
      // virtual void f1(){}
   };
}
```