# `fmax`, `fmaxf`, `fmaxl`

Determine the larger of two specified numeric values.

## Syntax

```C
double fmax(
   double x,
   double y
);

float fmax(
   float x,
   float y
); //C++ only

long double fmax(
   long double x,
   long double y
); //C++ only

float fmaxf(
   float x,
   float y
);

long double fmaxl(
   long double x,
   long double y
);

#define fmax(X, Y) // Requires C11 or later
```

### Parameters

*`x`*\
The first value to compare.

*`y`*\
The second value to compare.

## Return value

If successful, returns the larger of *`x`* or *`y`*. The value returned is exact, and doesn't depend on any form of rounding.

Otherwise, may return one of the following values:

| Issue | Return |
|---|---|
| *`x`* = NaN | *`y`* |
| *`y`* = NaN | *`x`* |
| *`x`* and *`y`* = NaN | NaN |

This function doesn't use the errors specified in  [`_matherr`](matherr.md).

## Remarks

Because C++ allows overloading, you can call overloads of fmax that take and return `float` and `long double` types. In a C program, unless you're using the \<tgmath.h> macro to call this function, `fmax` always takes and returns a double.

If you use the \<tgmath.h> `fmax()` macro, the type of the argument determines which version of the function is selected. See [Type-generic math](../tgmath.md) for details.

## Requirements

| Function | C header | C++ header |
|---|---|---|
| **`fmax`**, **`fmaxf`**, **`fmaxl`** | \<math.h> | \<cmath> or \<math.h> |
| **`fmax`** macro | \<tgmath.h> |  |

For more compatibility information, see [Compatibility](../compatibility.md).

## See also

[Alphabetical function reference](crt-alphabetical-function-reference.md)\
[`fmin`, `fminf`, `fminl`](fmin-fminf-fminl.md)