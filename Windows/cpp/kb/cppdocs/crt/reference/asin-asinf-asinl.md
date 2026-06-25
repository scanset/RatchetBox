# `asin`, `asinf`, `asinl`

Calculates the arcsine.

## Syntax

```C
double asin( double x );
float asinf ( float x );
long double asinl( long double x );
#define asin(X) // Requires C11 or later

float asin( float x );  // C++ only
long double asin( long double x );  // C++ only
```

### Parameters

*`x`*\
Value whose arcsine is to be calculated.

## Return value

The **`asin`** function returns the arcsine (the inverse sine function) of *`x`* in the range -π/2 to π/2 radians.

By default, if *`x`* is less than -1 or greater than 1, **`asin`** returns an indefinite.

| Input | SEH exception | `_matherr` exception |
|---|---|---|
| ± INF | `INVALID` | `_DOMAIN` |
| ± QNaN, IND | none | `_DOMAIN` |
| `|x| > 1` | `INVALID` | `_DOMAIN` |

## Remarks

Because C++ allows overloading, you can call overloads of **`asin`** with **`float`** and **`long double`** values. In a C program, unless you're using the `<tgmath.h>` macro to call this function, **`asin`** always takes and returns a **`double`**.

If you use the `asin` macro from `<tgmath.h>`, the type of the argument determines which version of the function is selected. See [Type-generic math](../tgmath.md) for details.

By default, this function's global state is scoped to the application. To change this behavior, see [Global state in the CRT](../global-state.md).

## Requirements

| Routine | Required header (C) | Required header (C++) |
|---|---|---|
| **`asin`**, **`asinf`**, **`asinl`** | `<math.h>` | `<cmath>` or `<math.h>` |
| **`asin`** macro | `<tgmath.h>` |  |

## Example

For more information, see [`acos`, `acosf`, `acosl`](acos-acosf-acosl.md).

## See also

[Math and floating-point support](../floating-point-support.md)\
[`acos`, `acosf`, `acosl`](acos-acosf-acosl.md)\
[`atan`, `atanf`, `atanl`, `atan2`, `atan2f`, `atan2l`](atan-atanf-atanl-atan2-atan2f-atan2l.md)\
[`cos`, `cosf`, `cosl`](cos-cosf-cosl.md)\
[`_matherr`](matherr.md)\
[`sin`, `sinf`, `sinl`](sin-sinf-sinl.md)\
[`tan`, `tanf`, `tanl`](tan-tanf-tanl.md)