# `cacos`, `cacosf`, `cacosl`

Retrieves the arccosine of a complex number, with branch cuts outside the interval [-1, +1] along the real axis.

## Syntax

```C
_Dcomplex cacos( _Dcomplex z );
_Fcomplex cacosf( _Fcomplex z );
_Lcomplex cacosl( _Lcomplex z );
```

```cpp
_Fcomplex cacos( _Fcomplex z );  // C++ only
_Lcomplex cacos( _Lcomplex z );  // C++ only
```

### Parameters

*`z`*\
A complex number that represents an angle, in radians.

## Return value

The arc cosine of *`z`*, in radians. The result is unbounded along the imaginary axis, and bounded in the interval [0, π] along the real axis. A domain error will occur if *`z`* is outside the interval [-1, +1].

## Remarks

Because C++ allows overloading, you can call overloads of **`cacos`** that take and return `_Fcomplex` and `_Lcomplex` values. In a C program, **`cacos`** always takes and returns a `_Dcomplex` value.

## Requirements

| Routine | C header | C++ header |
|---|---|---|
| **`cacos`**, **`cacosf`**, **`cacosl`** | \<complex.h> | \<ccomplex> |

For more compatibility information, see [Compatibility](../compatibility.md).

## See also

[Alphabetical function reference](crt-alphabetical-function-reference.md)\
[`catanh`, `catanhf`, `catanhl`](catanh-catanhf-catanhl.md)\
[`ctanh`, `ctanhf`, `ctanhl`](ctanh-ctanhf-ctanhl.md)\
[`catan`, `catanf`, `catanl`](catan-catanf-catanl.md)\
[`csinh`, `csinhf`, `csinhl`](csinh-csinhf-csinhl.md)\
[`casinh`, `casinhf`, `casinhl`](casinh-casinhf-casinhl.md)\
[`ccosh`, `ccoshf`, `ccoshl`](ccosh-ccoshf-ccoshl.md)\
[`cacosh`, `cacoshf`, `cacoshl`](cacosh-cacoshf-cacoshl.md)\
[`ctan`, `ctanf`, `ctanl`](ctan-ctanf-ctanl.md)\
[`csin`, `csinf`, `csinl`](csin-csinf-csinl.md)\
[`casin`, `casinf`, `casinl`](casin-casinf-casinl.md)\
[`ccos`, `ccosf`, `ccosl`](ccos-ccosf-ccosl.md)\
[`csqrt`, `csqrtf`, `csqrtl`](csqrt-csqrtf-csqrtl.md)