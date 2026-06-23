# `_chgsign`, `_chgsignf`, `_chgsignl`

Reverses the sign of a floating-point argument.

## Syntax

```C
double _chgsign(
   double x
);
float _chgsignf(
   float x
);
long double _chgsignl(
   long double x
);
```

### Parameters

*`x`*\
The floating-point value to be changed.

## Return value

The **`_chgsign`** functions return a value that's equal to the floating-point argument *`x`*, but with its sign reversed. There's no error return.

## Requirements

| Routine | Required header |
|---|---|
| **`_chgsign`** | \<float.h> |
| **`_chgsignf`**, **`_chgsignl`** | \<math.h> |

For more compatibility information, see [Compatibility](../compatibility.md).

## See also

[Math and floating-point support](../floating-point-support.md)\
[`fabs`, `fabsf`, `fabsl`](fabs-fabsf-fabsl.md)\
[`copysign`, `copysignf`, `copysignl`, `_copysign`, `_copysignf`, `_copysignl`](copysign-copysignf-copysignl-copysign-copysignf-copysignl.md)