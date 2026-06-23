# Compiler Error C2577

> 'member' : destructor/finalizer cannot have a return type

## Remarks

A destructor or finalizer cannot return a value of **`void`** or any other type. Remove the **`return`** statement from the destructor definition.

## Example

The following example generates C2577.

```cpp
// C2577.cpp
// compile with: /c
class A {
public:
   A() {}
   ~A(){
      return 0;   // C2577
   }
};
```