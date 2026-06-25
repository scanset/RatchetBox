# `_getche`, `_getwche`

Gets a character from the console with echo.

> [!IMPORTANT]
> This API cannot be used in applications that execute in the Windows Runtime. For more information, see [CRT functions not supported in Universal Windows Platform apps](../../cppcx/crt-functions-not-supported-in-universal-windows-platform-apps.md).

## Syntax

```C
int _getche( void );
wint_t _getwche( void );
```

## Return value

Returns the character read. There's no error return.

## Remarks

The **`_getche`** and **`_getwche`** functions read a single character from the console with echo, meaning that the character is displayed at the console. None of these functions can be used to read CTRL+C. When **`_getche`** or **`_getwche`** reads a function key or an arrow key, the function must be called twice; the first call returns 0 or 0xE0, and the second call returns the actual key code.

These functions lock the calling thread and are therefore thread-safe. For non-locking versions, see [`_getche_nolock`, `_getwche_nolock`](getche-nolock-getwche-nolock.md).

By default, this function's global state is scoped to the application. To change this behavior, see [Global state in the CRT](../global-state.md).

### Generic-text routine mappings

| Tchar.h routine | `_UNICODE` and `_MBCS` not defined | `_MBCS` defined | `_UNICODE` defined |
|---|---|---|---|
| `_gettche` | **`_getche`** | **`_getche`** | **`_getwche`** |

## Requirements

| Routine | Required header |
|---|---|
| **`_getche`** | \<conio.h> |
| **`_getwche`** | \<conio.h> or \<wchar.h> |

For more compatibility information, see [Compatibility](../compatibility.md).

## Example

```C
// crt_getche.c
// This program reads characters from
// the keyboard until it receives a 'Y' or 'y'.

#include <conio.h>
#include <ctype.h>

int main( void )
{
   int ch;

   _cputs( "Type 'Y' when finished typing keys: " );
   do
   {
      ch = _getche();
      ch = toupper( ch );
   } while( ch != 'Y' );

   _putch( ch );
   _putch( '\r' );    // Carriage return
   _putch( '\n' );    // Line feed
}
```

```Input
abcdefy
```

```Output
Type 'Y' when finished typing keys: abcdefyY
```

## See also

[Console and port I/O](../console-and-port-i-o.md)\
[`_cgets`, `_cgetws`](../cgets-cgetws.md)\
[`getc`, `getwc`](getc-getwc.md)\
[`_ungetch`, `_ungetwch`, `_ungetch_nolock`, `_ungetwch_nolock`](ungetch-ungetwch-ungetch-nolock-ungetwch-nolock.md)