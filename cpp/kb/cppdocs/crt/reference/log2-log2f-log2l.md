# `log2`, `log2f`, `log2l`

Determines the binary (base-2) logarithm of the specified value.

## Syntax

```C
double log2(
   double x
);

float log2(
   float x
); //C++ only

long double log2(
   long double x
); //C++ only

float log2f(
   float x
);

long double log2l(
   long double x
);

#define log2(X) // Requires C11 or later
```

### Parameters

*`x`*\
The value to determine the base-2 logarithm of.

## Return value

On success, the functions return the base-2 log of *`x`*.

Otherwise, the functions may return one of the following values:

| Issue | Return |
|---|---|
| *`x`* < 0 | NaN |
| *`x`* = ±0 | -INFINITY |
| *`x`* = 1 | +0 |
| +INFINITY | +INFINITY |
| NaN | NaN |
| domain error | NaN |
| pole error | -`HUGE_VAL`, -`HUGE_VALF`, or -`HUGE_VALL` |

Errors are reported as specified in [`_matherr`](matherr.md).

## Remarks

If *`x`* is an integer, this function essentially returns the zero-based index of the most significant 1 bit of *`x`*.

By default, this function's global state is scoped to the application. To change this behavior, see [Global state in the CRT](../global-state.md).

## Requirements

| Function | C header | C++ header |
|---|---|---|
| **`log2`**, **`log2f`**, **`log2l`** | \<math.h> | \<cmath> |
| **`log2`** macro | \<tgmath.h> |  |

For more compatibility information, see [Compatibility](../compatibility.md).

## See also

[Alphabetical function reference](crt-alphabetical-function-reference.md)\
[`exp2`, `exp2f`, `exp2l`](exp2-exp2f-exp2l.md)\
[`log`, `logf`, `log10`, `log10f`](log-logf-log10-log10f.md)