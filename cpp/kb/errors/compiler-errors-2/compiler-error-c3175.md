# Compiler Error C3175

> 'function1' : cannot call a method of a managed type from unmanaged function 'function2'

## Remarks

Unmanaged functions cannot call member functions of managed classes.

## Example

The following example generates C3175:

```cpp
// C3175_2.cpp
// compile with: /clr

ref struct A {
   static void func() {
   }
};

#pragma unmanaged   // remove this line to resolve

void func2() {
   A::func();   // C3175
}

#pragma managed

int main() {
   A ^a = gcnew A;
   func2();
}
```