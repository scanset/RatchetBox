# `_lrotl`, `_lrotr`

Rotates bits to the left (**`_lrotl`**) or right (**`_lrotr`**).

## Syntax

```C
unsigned long _lrotl( unsigned long value, int shift );
unsigned long _lrotr( unsigned long value, int shift );
```

### Parameters

*`value`*\
Value to be rotated.

*`shift`*\
Number of bits to shift *`value`*.

## Return value

Both functions return the rotated value. There's no error return.

## Remarks

The **`_lrotl`** and **`_lrotr`** functions rotate *`value`* by *`shift`* bits. **`_lrotl`** rotates the value left, toward more significant bits. **`_lrotr`** rotates the value right, toward less significant bits. Both functions wrap bits rotated off one end of *`value`* to the other end.

## Requirements

| Routine | Required header |
|---|---|
| **`_lrotl`**, **`_lrotr`** | \<stdlib.h> |

For more compatibility information, see [Compatibility](../compatibility.md).

## Example

```C
// crt_lrot.c

#include <stdlib.h>
#include <stdio.h>

int main( void )
{
   unsigned long val = 0x0fac35791;

   printf( "0x%8.8lx rotated left eight bits is 0x%8.8lx\n",
            val, _lrotl( val, 8 ) );
   printf( "0x%8.8lx rotated right four bits is 0x%8.8lx\n",
            val, _lrotr( val, 4 ) );
}
```

```Output
0xfac35791 rotated left eight bits is 0xc35791fa
0xfac35791 rotated right four bits is 0x1fac3579
```

## See also

[Math and floating-point support](../floating-point-support.md)\
[`_rotl`, `_rotl64`, `_rotr`, `_rotr64`](rotl-rotl64-rotr-rotr64.md)