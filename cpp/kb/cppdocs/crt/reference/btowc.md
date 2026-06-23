# `btowc`

Determine whether an integer represents a valid single-byte character in the initial shift state.

## Syntax

```C
wint_t btowc(
   int character
);
```

### Parameters

*`character`*\
Integer to test.

## Return value

Returns the wide-character representation of the character if the integer represents a valid single-byte character in the initial shift state. Returns `WEOF` if the integer is `EOF` or isn't a valid single-byte character in the initial shift state. The output of this function is affected by the current `LC_TYPE` locale.

## Remarks

By default, this function's global state is scoped to the application. To change this behavior, see [Global state in the CRT](../global-state.md).

## Requirements

| Routine | Required header |
|---|---|
| **`btowc`** | \<stdio.h> or \<wchar.h> |

For more compatibility information, see [Compatibility](../compatibility.md).

## See also

[`mbtowc`, `_mbtowc_l`](mbtowc-mbtowc-l.md)