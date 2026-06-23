# `fabs`, `fabsf`, `fabsl`

Calculates the absolute value of the floating-point argument.

## Syntax

```C
double fabs(
   double x
);
float fabs(
   float x
); // C++ only
long double fabs(
   long double x
); // C++ only
float fabsf(
   float x
);
long double fabsl(
   long double x
);

#define fabs(X) // Requires C11 or later
```

### Parameters

*`x`*\
Floating-point value.

## Return value

The **`fabs`** functions return the absolute value of the argument *`x`*. There's no error return.

| Input | SEH exception | `_matherr` exception |
|---|---|---|
| ± QNaN, IND | none | `_DOMAIN` |

## Remarks

C++ allows overloading, so you can call overloads of **`fabs`** if you include the `<cmath>` header. In a C program, unless you're using the `<tgmath.h>` macro to call this function, **`fabs`** always takes and returns a **`double`**.

If you use the `fabs` macro from `<tgmath.h>`, the type of the argument determines which version of the function is selected. See [Type-generic math](../tgmath.md) for details.

By default, this function's global state is scoped to the application. To change this behavior, see [Global state in the CRT](../global-state.md).

## Requirements

| Function | Required C header | Required C++ header |
|---|---|---|
| **`fabs`**, **`fabsf`**, **`fabsl`** | `<math.h>` | `<cmath>` or `<math.h>` |
| **`fabs`** macro | `<tgmath.h>` |  |

For more compatibility information, see [Compatibility](../compatibility.md).

## Example

See the example for [`abs`](abs-labs-llabs-abs64.md).

## See also

[Math and floating-point support](../floating-point-support.md)\
[`abs`, `labs`, `llabs`, `_abs64`](abs-labs-llabs-abs64.md)\
[`_cabs`](cabs.md)