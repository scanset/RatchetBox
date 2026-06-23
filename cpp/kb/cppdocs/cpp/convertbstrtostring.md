# ConvertBSTRToString

**Microsoft Specific**

Converts a `BSTR` value to a `char *`.

## Syntax

```
char* __stdcall ConvertBSTRToString(BSTR pSrc);
```

#### Parameters

*pSrc*<br/>
A BSTR variable.

## Remarks

**ConvertBSTRToString** allocates a string you must delete.

## Example

```cpp
// ConvertBSTRToString.cpp
#include <comutil.h>
#include <stdio.h>

#pragma comment(lib, "comsuppw.lib")

int main() {
   BSTR bstrText = ::SysAllocString(L"Test");
   wprintf_s(L"BSTR text: %s\n", bstrText);

   char* lpszText2 = _com_util::ConvertBSTRToString(bstrText);
   printf_s("char * text: %s\n", lpszText2);

   SysFreeString(bstrText);
   delete[] lpszText2;
}
```

```Output
BSTR text: Test
char * text: Test
```

**END Microsoft Specific**

## Requirements

**Header:** \<comutil.h>

**Lib:** comsuppw.lib or comsuppwd.lib (see [/Zc:wchar_t (wchar_t Is Native Type)](../build/reference/zc-wchar-t-wchar-t-is-native-type.md) for more information)

## See also

[Compiler COM Global Functions](../cpp/compiler-com-global-functions.md)