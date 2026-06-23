# `ctanh`, `ctanhf`, `ctanhl`

Computes the complex hyperbolic tangent of a complex number.

## Syntax

```C
_Dcomplex ctanh(
   _Dcomplex z
);
_Fcomplex ctanh(
   _Fcomplex z
);  // C++ only
_Lcomplex ctanh(
   _Lcomplex z
);  // C++ only
_Fcomplex ctanhf(
   _Fcomplex z
);
_Lcomplex ctanhl(
   _Lcomplex z
);
```

### Parameters

*`z`*\
A complex number that represents an angle, in radians.

## Return value

The complex hyperbolic tangent of *`z`*.

| Input | SEH exception | `_matherr` exception |
|---|---|---|
| ± INF, QNaN, IND | none | _DOMAIN |
| ± INF (tan, tanf) | INVALID | _DOMAIN |

## Remarks

Because C++ allows overloading, you can call overloads of **`ctanh`** that take and return `_Fcomplex` and `_Lcomplex` values. In a C program, **`ctanh`** always takes and returns a `_Dcomplex` value.

## Requirements

| Routine | C header | C++ header |
|---|---|---|
| **`ctanh`**, **`ctanhf`**, **`ctanhl`** | \<complex.h> | \<ccomplex> |

For compatibility information, see [Compatibility](../compatibility.md).

## See also

[Alphabetical function reference](crt-alphabetical-function-reference.md)\
[`catanh`, `catanhf`, `catanhl`](catanh-catanhf-catanhl.md)\
[`catan`, `catanf`, `catanl`](catan-catanf-catanl.md)\
[`csinh`, `csinhf`, `csinhl`](csinh-csinhf-csinhl.md)\
[`casinh`, `casinhf`, `casinhl`](casinh-casinhf-casinhl.md)\
[`ccosh`, `ccoshf`, `ccoshl`](ccosh-ccoshf-ccoshl.md)\
[`cacosh`, `cacoshf`, `cacoshl`](cacosh-cacoshf-cacoshl.md)\
[`cacos`, `cacosf`, `cacosl`](cacos-cacosf-cacosl.md)\
[`ctan`, `ctanf`, `ctanl`](ctan-ctanf-ctanl.md)\
[`csin`, `csinf`, `csinl`](csin-csinf-csinl.md)\
[`casin`, `casinf`, `casinl`](casin-casinf-casinl.md)\
[`ccos`, `ccosf`, `ccosl`](ccos-ccosf-ccosl.md)\
[`csqrt`, `csqrtf`, `csqrtl`](csqrt-csqrtf-csqrtl.md)