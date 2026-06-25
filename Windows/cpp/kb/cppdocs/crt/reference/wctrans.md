# `wctrans`

Determines a mapping from one set of character codes to another.

## Syntax

```C
wctrans_t wctrans(
   const char *property
);
```

### Parameters

*`property`*\
A string that specifies one of the valid transformations.

## Return value

If the `LC_CTYPE` category of the current locale doesn't define a mapping whose name matches the property string *`property`*, the function returns zero. Otherwise, it returns a nonzero value suitable for use as the second argument to a subsequent call to [`towctrans`](towctrans.md).

## Remarks

This function determines a mapping from one set of character codes to another.

The following pairs of calls have the same behavior in all locales, but it's possible to define more mappings even in the "C" locale:

| Function | Same As |
|---|---|
| `tolower(c)` | `towctrans(c, wctrans("towlower"))` |
| `towupper(c)` | `towctrans(c, wctrans("toupper"))` |

## Requirements

| Routine | Required Header |
|---|---|
| **`wctrans`** | \<wctype.h> |

For more compatibility information, see [Compatibility](../compatibility.md).

## Example

```C
// crt_wctrans.cpp
// compile with: /EHsc
// This example determines a mapping from one set of character
// codes to another.

#include <wchar.h>
#include <wctype.h>
#include <stdio.h>
#include <iostream>

int main()
{
    wint_t c = 'a';
    printf_s("%d\n",c);

    wctrans_t i = wctrans("toupper");
    printf_s("%d\n",i);

    wctrans_t ii = wctrans("towlower");
    printf_s("%d\n",ii);

    wchar_t wc = towctrans(c, i);
    printf_s("%d\n",wc);
}
```

```Output
97
1
0
65
```

## See also

[Data conversion](../data-conversion.md)\
[`setlocale`, `_wsetlocale`](setlocale-wsetlocale.md)