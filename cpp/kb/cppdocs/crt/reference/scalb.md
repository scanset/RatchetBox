# `_scalb`, `_scalbf`

Scales argument by a power of 2.

## Syntax

```C
double _scalb(
   double x,
   long exp
);
float _scalbf(
   float x,
   long exp
); /* x64 only */
```

### Parameters

*`x`*\
Double-precision, floating-point value.

*`exp`*\
Long integer exponent.

## Return value

Returns an exponential value if successful. On overflow (depending on the sign of *`x`*), **`_scalb`** returns +/- `HUGE_VAL`; the `errno` variable is set to `ERANGE`.

For more information about this and other return codes, see [`errno`, `_doserrno`, `_sys_errlist`, and `_sys_nerr`](../errno-doserrno-sys-errlist-and-sys-nerr.md).

## Remarks

The **`_scalb`** function calculates the value of *`x`* \* 2<sup>*`exp`*</sup>.

By default, this function's global state is scoped to the application. To change this behavior, see [Global state in the CRT](../global-state.md).

## Requirements

| Routine | Required header |
|---|---|
| **`_scalb`**, **`_scalbf`** | `<float.h>` |

For more compatibility information, see [Compatibility](../compatibility.md).

## See also

[Math and floating-point support](../floating-point-support.md)\
[`ldexp`](ldexp.md)