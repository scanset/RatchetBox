# `__pctype_func`

Retrieves a pointer to an array of character classification information.

## Syntax

```cpp
const unsigned short *__pctype_func(
   )
```

## Return value

A pointer to an array of character classification information.

## Remarks

The information in the character classification table is for internal use only, and is used by various functions that classify characters of type **`char`**. For more information, see the `Remarks` section of [`_pctype`, `_pwctype`, `_wctype`, `_mbctype`, `_mbcasemap`](./pctype-pwctype-wctype-mbctype-mbcasemap.md).

By default, this function's global state is scoped to the application. To change this behavior, see [Global state in the CRT](global-state.md).

## Requirements

| Routine | Required header |
|---|---|
| **`__pctype_func`** | `<ctype.h>` |

## See also

[`_pctype`, `_pwctype`, `_wctype`, `_mbctype`, `_mbcasemap`](./pctype-pwctype-wctype-mbctype-mbcasemap.md)