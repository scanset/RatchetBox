# Compiler Error C3866

> function call missing argument list

## Remarks

Inside a nonstatic member function, a destructor or finalizer call did not have an argument list.

## Example

The following example generates C3866:

```cpp
// C3866.cpp
// compile with: /c
class C {
   ~C();
   void f() {
      this->~C;   // C3866
      this->~C();   // OK
   }
};
```