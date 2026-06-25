# `_getmbcp`

Retrieves the current code page.

## Syntax

```C
int _getmbcp( void );
```

## Return value

Returns the current multibyte code page. A return value of 0 indicates that a single byte code page is in use.

## Remarks

By default, this function's global state is scoped to the application. To change this behavior, see [Global state in the CRT](../global-state.md).

## Requirements

| Routine | Required header |
|---|---|
| **`_getmbcp`** | \<mbctype.h> |

For more compatibility information, see [Compatibility](../compatibility.md).

## See also

[`_setmbcp`](setmbcp.md)