# `_set_printf_count_output`

Enable or disable support of the **%n** format in [`printf`, `_printf_l`, `wprintf`, `_wprintf_l`](printf-printf-l-wprintf-wprintf-l.md)-family functions.

## Syntax

```C
int _set_printf_count_output(
   int enable
);
```

### Parameters

*`enable`*\
A non-zero value to enable **%n** support, 0 to disable **%n** support.

## Property value or return value

The state of **%n** support before calling this function: non-zero if **%n** support was enabled, 0 if it was disabled.

## Remarks

Because of security reasons, support for the **%n** format specifier is disabled by default in `printf` and all its variants. If **%n** is encountered in a `printf` format specification, the default behavior is to invoke the invalid parameter handler as described in [Parameter validation](../parameter-validation.md). Calling **`_set_printf_count_output`** with a non-zero argument will cause `printf`-family functions to interpret **%n** as described in [Format specification syntax: `printf` and `wprintf` functions](../format-specification-syntax-printf-and-wprintf-functions.md).

## Requirements

| Routine | Required header |
|---|---|
| **`_set_printf_count_output`** | \<stdio.h> |

For more compatibility information, see [Compatibility](../compatibility.md).

## Example

```C
// crt_set_printf_count_output.c
#include <stdio.h>

int main()
{
   int e;
   int i;
   e = _set_printf_count_output( 1 );
   printf( "%%n support was %sabled.\n",
        e ? "en" : "dis" );
   printf( "%%n support is now %sabled.\n",
        _get_printf_count_output() ? "en" : "dis" );
   printf( "12345%n6789\n", &i ); // %n format should set i to 5
   printf( "i = %d\n", i );
}
```

```Output
%n support was disabled.
%n support is now enabled.
123456789
i = 5
```

## See also

[`_get_printf_count_output`](get-printf-count-output.md)