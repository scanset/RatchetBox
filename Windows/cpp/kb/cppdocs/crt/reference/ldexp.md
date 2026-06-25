# `ldexp`, `ldexpf`, `ldexpl`

Multiplies a floating-point number by an integral power of two.

## Syntax

```C
double ldexp(
   double x,
   int exp
);
float ldexpf(
   float x,
   int exp
);
long double ldexpl(
   long double x,
   int exp
);
#define ldexp(X, INT) // Requires C11 or later

float ldexp(
   float x,
   int exp
);  // C++ only
long double ldexp(
   long double x,
   int exp
);  // C++ only
```

### Parameters

*`x`*\
Floating-point value.

*`exp`*\
Integer exponent.

## Return value

The **`ldexp`** functions return the value of *`x`* \* 2<sup>*`exp`*</sup> if successful. On overflow, and depending on the sign of *`x`*, **`ldexp`** returns +/- `HUGE_VAL`; the `errno` value is set to `ERANGE`.

For more information about `errno` and possible error return values, see [`errno`, `_doserrno`, `_sys_errlist`, and `_sys_nerr`](../errno-doserrno-sys-errlist-and-sys-nerr.md).

## Remarks

Because C++ allows overloading, you can call overloads of **`ldexp`** that take **`float`** or **`long double`** types. In a C program, unless you're using the \<tgmath.h> macro to call this function, **`ldexp`** always takes a **`double`** and an **`int`** and returns a **`double`**.

If you use the \<tgmath.h> `ldexp()` macro, the type of the argument determines which version of the function is selected. See [Type-generic math](../tgmath.md) for details.

By default, this function's global state is scoped to the application. To change this behavior, see [Global state in the CRT](../global-state.md).

## Requirements

| Routine | C header | C++ header |
|---|---|---|
| **`ldexp`**, **`ldexpf`**, **`ldexpl`** | \<math.h> | \<cmath> |
| **`ldexp`** macro | \<tgmath.h> |  |

For compatibility information, see [Compatibility](../compatibility.md).

## Example

```C
// crt_ldexp.c

#include <math.h>
#include <stdio.h>

int main( void )
{
   double x = 4.0, y;
   int p = 3;

   y = ldexp( x, p );
   printf( "%2.1f times two to the power of %d is %2.1f\n", x, p, y );
}
```

## Output

```Output
4.0 times two to the power of 3 is 32.0
```

## See also

[Math and floating-point support](../floating-point-support.md)\
[`frexp`](frexp.md)\
[`modf`, `modff`, `modfl`](modf-modff-modfl.md)