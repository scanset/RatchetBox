# Compiler Error C3192

> syntax error : '^' is not a prefix operator (did you mean '*'?)

## Remarks

A handle cannot be used as a dereference operator.

## Example

The following example generates C3192:

```cpp
// C3192.cpp
// compile with: /clr
using namespace System;

ref class MyClass {
public:
   MyClass () {}
   MyClass(MyClass%) {}
};

int main() {
   MyClass ^ s = gcnew MyClass;
   MyClass b = ^s;   // C3192

   // OK
   MyClass b2 = *s;
}
```