# Compiler Error C3204

> '_alloca' cannot be called from within a catch block

## Remarks

This error occurs when you use a call to [_alloca](../../c-runtime-library/reference/alloca.md) from within a catch block.

## Example

The following example generates C3204:

```cpp
// C3204.cpp
// compile with: /EHsc
#include <malloc.h>

void ShowError(void)
{
   try
   {
   }
   catch(...)
   {
      _alloca(1);   // C3204
   }
}
```