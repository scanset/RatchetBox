# `_byteswap_uint64`, `_byteswap_ulong`, `_byteswap_ushort`

Reverses the order of bytes in an integer.

## Syntax

```C
unsigned short _byteswap_ushort ( unsigned short val );
unsigned long _byteswap_ulong ( unsigned long val );
unsigned __int64 _byteswap_uint64 ( unsigned __int64 val );
```

### Parameters

*`val`*\
The integer to reverse byte order.

## Requirements

| Routine | Required header |
|---|---|
| **`_byteswap_ushort`** | `<stdlib.h>` |
| **`_byteswap_ulong`** | `<stdlib.h>` |
| **`_byteswap_uint64`** | `<stdlib.h>` |

For more compatibility information, see [Compatibility](../compatibility.md).

## Example

```C
// crt_byteswap.c
#include <stdlib.h>

int main()
{
   unsigned __int64 u64 = 0x0102030405060708;
   unsigned long ul = 0x01020304;

   printf("byteswap of %I64x = %I64x\n", u64, _byteswap_uint64(u64));
   printf("byteswap of %Ix = %Ix", ul, _byteswap_ulong(ul));
}
```

```Output
byteswap of 0102030405060708 = 0807060504030201
byteswap of 01020304 = 04030201
```

## See also

[Universal C runtime routines by category](../run-time-routines-by-category.md)