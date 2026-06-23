# Compiler Error C2726

> 'gcnew' may only be used to create an object with managed or WinRT type

## Remarks

You cannot create an instance of a native type on the garbage-collected heap.

## Example

The following example generates C2726 and shows how to fix it:

```cpp
// C2726.cpp
// compile with: /clr
using namespace System;
class U {};
ref class V {};
value class W {};

int main() {
   U* pU = gcnew U;    // C2726
   U* pU2 = new U;   // OK
   V^ p2 = gcnew V;   // OK
   W p3;   // OK

}
```