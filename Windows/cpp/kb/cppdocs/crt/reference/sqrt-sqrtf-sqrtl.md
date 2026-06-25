# `sqrt`, `sqrtf`, `sqrtl`

Calculates the square root.

## Syntax

```C
double sqrt(
   double x
);
float sqrt(
   float x
);  // C++ only
long double sqrt(
   long double x
);  // C++ only
float sqrtf(
   float x
);
long double sqrtl(
   long double x
);
#define sqrt(x) // Requires C11 or later
```

### Parameters

*`x`*\
Non-negative floating-point value

## Remarks

Because C++ allows overloading, you can call overloads of **`sqrt`** that take **`float`** or **`long double`** types. In a C program, unless you're using the `<tgmath.h>` macro to call this function, **`sqrt`** always takes and returns **`double`**.

If you use the `<tgmath.h> sqrt()` macro, the type of the argument determines which version of the function is selected. See [Type-generic math](../tgmath.md) for details.

By default, this function's global state is scoped to the application. To change this behavior, see [Global state in the CRT](../global-state.md).

## Return value

The **`sqrt`** functions return the square-root of *`x`*. By default, if *`x`* is negative, **`sqrt`** returns an indefinite `NaN`.

| Input | SEH exception | `_matherr` exception |
|---|---|---|
| ± QNaN, IND | none | `_DOMAIN` |
| - INF | none | `_DOMAIN` |
| `x < 0` | none | `_DOMAIN` |

## Requirements

| Function | C header | C++ header |
|---|---|---|
| **`sqrt`**, **`sqrtf`**, **`sqrtl`** | `<math.h>` | `<cmath>` |
| **`sqrt`** macro | `<tgmath.h>` |  |

For compatibility information, see [Compatibility](../compatibility.md).

## Example

```C
// crt_sqrt.c
// This program calculates a square root.

#include <math.h>
#include <stdio.h>
#include <stdlib.h>

int main( void )
{
   double question = 45.35, answer;
   answer = sqrt( question );
   if( question < 0 )
      printf( "Error: sqrt returns %f\n", answer );
   else
      printf( "The square root of %.2f is %.2f\n", question, answer );
}
```

```Output
The square root of 45.35 is 6.73
```

## See also

[Math and floating-point support](../floating-point-support.md)\
[`exp`, `expf`, `expl`](exp-expf.md)\
[`log`, `logf`, `log10`, `log10f`](log-logf-log10-log10f.md)\
[`pow`, `powf`, `powl`](pow-powf-powl.md)\
[`_CIsqrt`](../cisqrt.md)