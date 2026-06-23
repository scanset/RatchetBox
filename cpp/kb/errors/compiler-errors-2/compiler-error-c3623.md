# Compiler Error C3623

> 'variable': bit fields are not supported in managed or WinRT types

## Remarks

The use of bit fields is not permitted on variables in a managed or WinRT class.

## Example

The following example generates C3623:

```cpp
// C3623.cpp
// compile with: /clr
using namespace System;
ref class CMyClass {
public:
   int i : 1;   // C3623
};

int main() {
   CMyClass^ pMyClass = gcnew CMyClass();
   pMyClass->i = 3;
   Console::Out->WriteLine(pMyClass->i);
}
```