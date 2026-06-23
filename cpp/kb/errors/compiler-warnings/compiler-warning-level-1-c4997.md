# Compiler Warning (level 1) C4997

> 'class': coclass does not implement a COM interface or pseudo-interface

## Remarks

A class marked with the [coclass](../../windows/attributes/coclass.md) attribute did not implement an interface.

## Example

The following example generates C4997:

```cpp
// C4997.cpp
// compile with: /WX
// to resolve this C4997, uncomment all code
#include <objbase.h>

[ object ]
__interface I {
   HRESULT func();
};

[ coclass ]
struct C /*: I*/ {
   /*
   HRESULT func() {
      return S_OK;
   }
   */
};   // C4997
```