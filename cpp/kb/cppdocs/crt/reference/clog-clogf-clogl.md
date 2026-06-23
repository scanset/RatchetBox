# `clog`, `clogf`, `clogl`

Retrieves the natural logarithm of a complex number, with a branch cut along the negative real axis.

## Syntax

```C
_Dcomplex clog(
   _Dcomplex z
);
_Fcomplex clog(
   _Fcomplex z
);  // C++ only
_Lcomplex clog(
   _Lcomplex z
);  // C++ only
_Fcomplex clogf(
   _Fcomplex z
);
_Lcomplex clogl(
   _Lcomplex z
);
```

### Parameters

*`z`*\
The base of the logarithm.

## Return value

The natural logarithm of *`z`*. The result is unbounded along the real axis and in the interval [-iπ, +iπ] along the imaginary axis.

The possible return values are:

| *`z`* parameter | Return value |
|---|---|
| Positive | The logarithm (base 10) of *`z`* |
| Zero | - INF |
| Negative | NaN |
| NaN | NaN |
| + INF | + INF |

## Remarks

Because C++ allows overloading, you can call overloads of **`clog`** that take and return `_Fcomplex` and `_Lcomplex` values. In a C program, **`clog`** always takes and returns a `_Dcomplex` value.

## Requirements

| Routine | C header | C++ header |
|---|---|---|
| **`clog`**, **`clogf`**, **`clogl`** | \<complex.h> | \<ccomplex> |

For more compatibility information, see [Compatibility](../compatibility.md).

## See also

[Alphabetical function reference](crt-alphabetical-function-reference.md)\
[`cexp`, `cexpf`, `cexpl`](cexp-cexpf-cexpl.md)\
[`cpow`, `cpowf`, `cpowl`](cpow-cpowf-cpowl.md)\
[`clog10`, `clog10f`, `clog10l`](clog10-clog10f-clog10l.md)