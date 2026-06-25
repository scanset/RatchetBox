# `_cabs`

Calculates the absolute value of a complex number.

## Syntax

```C
double _cabs(
   struct _complex z
);
```

### Parameters

*`z`*\
Complex number.

## Return value

**`_cabs`** returns the absolute value of its argument if successful. On overflow, **`_cabs`** returns `HUGE_VAL` and sets `errno` to `ERANGE`. You can change error handling with [`_matherr`](matherr.md).

## Remarks

The **`_cabs`** function calculates the absolute value of a complex number, which must be a structure of type [`_complex`](../standard-types.md). The structure *`z`* is composed of a real component *`x`* and an imaginary component *`y`*. A call to **`_cabs`** produces a value equivalent to that of the expression `sqrt( z.x * z.x + z.y * z.y )`.

By default, this function's global state is scoped to the application. To change this behavior, see [Global state in the CRT](../global-state.md).

## Requirements

| Routine | Required header |
|---|---|
| **`_cabs`** | \<math.h> |

For more compatibility information, see [Compatibility](../compatibility.md).

## Example

```C
// crt_cabs.c
// Using _cabs, this program calculates
// the absolute value of a complex number.

#include <math.h>
#include <stdio.h>

int main( void )
{
   struct _complex number = { 3.0, 4.0 };
   double d;

   d = _cabs( number );
   printf( "The absolute value of %f + %fi is %f\n",
           number.x, number.y, d );
}
```

```Output
The absolute value of 3.000000 + 4.000000i is 5.000000
```

## See also

[Math and floating-point support](../floating-point-support.md)\
[`abs`, `labs`, `llabs`, `_abs64`](abs-labs-llabs-abs64.md)\
[`fabs`, `fabsf`, `fabsl`](fabs-fabsf-fabsl.md)