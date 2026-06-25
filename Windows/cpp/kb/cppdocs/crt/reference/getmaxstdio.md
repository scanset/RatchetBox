# `_getmaxstdio`

Returns the number of simultaneously open files permitted at the stream I/O level.

## Syntax

```C
int _getmaxstdio( void );
```

## Return value

Returns a number that represents the number of simultaneously open files currently permitted at the `stdio` level.

## Remarks

Use [`_setmaxstdio`](setmaxstdio.md) to configure the number of simultaneously open files permitted at the `stdio` level.

## Requirements

| Routine | Required header |
|---|---|
| **`_getmaxstdio`** | \<stdio.h> |

For more compatibility information, see [Compatibility](../compatibility.md).

## Example

```C
// crt_setmaxstdio.c
// The program retrieves the maximum number
// of open files and prints the results
// to the console.

#include <stdio.h>

int main()
{
   printf( "%d\n", _getmaxstdio());

   _setmaxstdio(2048);

   printf( "%d\n", _getmaxstdio());
}
```

```Output
512
2048
```

## See also

[Stream I/O](../stream-i-o.md)