# `exp2`, `exp2f`, `exp2l`

Computes 2 raised to the specified value.

## Syntax

```C
double exp2(
   double x
);

float exp2(
   float x
);  // C++ only

long double exp2(
   long double x
); // C++ only

float exp2f(
   float x
);

long double exp2l(
   long double x
);
#define exp2(X) // Requires C11 or later
```

### Parameters

*`x`*\
The value of the exponent.

## Return value

If successful, returns the base-2 exponent of *`x`*, that is, 2<sup>x</sup>. Otherwise, it returns one of the following values:

| Issue | Return |
|---|---|
| *`x`* = ±0 | 1 |
| *`x`* = -INFINITY | +0 |
| *`x`* = +INFINITY | +INFINITY |
| *`x`* = NaN | NaN |
| Overflow range error | +HUGE_VAL, +HUGE_VALF, or +HUGE_VALL |
| Underflow range error | Correct result, after rounding |

Errors are reported as specified in [`_matherr`](matherr.md).

## Remarks

Because C++ allows overloading, you can call overloads of **`exp2`** that take and return **`float`** and **`long double`** types. In a C program, unless you're using the \<tgmath.h> macro to call this function, **`exp2`** always takes and returns a **`double`**, unless you use the macro in \<tgmath.h>.

If you use the \<tgmath.h> `exp2()` macro, the type of the argument determines which version of the function is selected. See [Type-generic math](../tgmath.md) for details.

By default, this function's global state is scoped to the application. To change this behavior, see [Global state in the CRT](../global-state.md).

## Requirements

| Routine | C header | C++ header |
|---|---|---|
| **`exp2`**, **`expf2`**, **`expl2`** | \<math.h> | \<cmath> |
| **`exp2`** macro | \<tgmath.h> |  |

For more compatibility information, see [Compatibility](../compatibility.md).

## See also

[Alphabetical function reference](crt-alphabetical-function-reference.md)\
[`exp`, `expf`, `expl`](exp-expf.md)\
[`log2`, `log2f`, `log2l`](log2-log2f-log2l.md)