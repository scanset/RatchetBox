# Compiler Error C3385

> 'class::function' : a function that has a DllImport Custom attribute cannot return an instance of a class

## Remarks

A function defined as being in a .dll file specified with the `DllImport` attribute cannot return an instance of a class.

## Example

The following example generates C3385:

```cpp
// C3385.cpp
// compile with: /clr /c
using namespace System;
using namespace System::Runtime::InteropServices;

struct SomeStruct1 {};

public ref struct Wrap {
   [ DllImport("somedll.dll", CharSet=CharSet::Unicode) ]
   static SomeStruct1 f1([In, Out] SomeStruct1 *pS);   // C3385
};
```