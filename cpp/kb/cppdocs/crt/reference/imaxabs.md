# `imaxabs`

Calculates the absolute value of an integer of any size.

## Syntax

```C
intmax_t imaxabs(
   intmax_t n
);
```

### Parameters

*`n`*\
Integer value.

## Return value

The **`imaxabs`** function returns the absolute value of the argument. There's no error return.

> [!NOTE]
> Because the range of negative integers that can be represented by using `intmax_t` is larger than the range of positive integers that can be represented, it's possible to supply an argument to **`imaxabs`** that can't be converted. If the absolute value of the argument cannot be represented by the return type, the behavior of **`imaxabs`** is undefined.

## Requirements

| Routine | Required header |
|---|---|
| **`imaxabs`** | \<inttypes.h> |

For more compatibility information, see [Compatibility](../compatibility.md).

## Libraries

All versions of the [C run-time libraries](../crt-library-features.md).

## Example

```C
// crt_imaxabs.c
// Build using: cl /W3 /Tc crt_imaxabs.c
// This example calls imaxabs to compute an
// absolute value, then displays the results.

#include <stdio.h>
#include <stdlib.h>
#include <inttypes.h>

int main(int argc, char *argv[])
{
   intmax_t x = LLONG_MIN + 2;

   printf("The absolute value of %lld is %lld\n", x, imaxabs(x));
}
```

```Output
The absolute value of -9223372036854775806 is 9223372036854775806
```

## See also

[Data conversion](../data-conversion.md)\
[Math and floating-point support](../floating-point-support.md)\
[`abs`, `labs`, `llabs`, `_abs64`](abs-labs-llabs-abs64.md)\
[`_cabs`](cabs.md)\
[`fabs`, `fabsf`, `fabsl`](fabs-fabsf-fabsl.md)