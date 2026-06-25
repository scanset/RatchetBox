# `_putch`, `_putwch`

Writes a character to the console.

> [!IMPORTANT]
> This API cannot be used in applications that execute in the Windows Runtime. For more information, see [CRT functions not supported in Universal Windows Platform apps](../../cppcx/crt-functions-not-supported-in-universal-windows-platform-apps.md).

## Syntax

```C
int _putch(
   int c
);

wint_t _putwch(
   wchar_t c
);
```

### Parameters

*`c`*\
Character to be output.

## Return value

Returns *`c`* if successful. If **`_putch`** fails, it returns `EOF`; if **`_putwch`** fails, it returns `WEOF`.

## Remarks

These functions write the character *`c`* directly, without buffering, to the console. In Windows NT, **`_putwch`** writes Unicode characters using the current console locale setting.

The versions with the `_nolock` suffix are identical except that they aren't protected from interference by other threads. For more information, see [`_putch_nolock`, `_putwch_nolock`](./putch-nolock-putwch-nolock.md).

By default, this function's global state is scoped to the application. To change this behavior, see [Global state in the CRT](../global-state.md).

### Generic-text routine mappings

| Tchar.h routine | `_UNICODE` and `_MBCS` not defined | `_MBCS` defined | `_UNICODE` defined |
|---|---|---|---|
| `_puttch` | **`_putch`** | **`_putch`** | **`_putwch`** |

## Requirements

| Routine | Required header |
|---|---|
| **`_putch`** | \<conio.h> |
| **`_putwch`** | \<conio.h> |

For more compatibility information, see [Compatibility](../compatibility.md).

## Libraries

All versions of the [C run-time libraries](../crt-library-features.md).

## Example

See the example for [`_getch`](getch-getwch.md).

## See also

[Console and port I/O](../console-and-port-i-o.md)\
[`_cprintf`, `_cprintf_l`, `_cwprintf`, `_cwprintf_l`](cprintf-cprintf-l-cwprintf-cwprintf-l.md)\
[`_getch`, `_getwch`](getch-getwch.md)