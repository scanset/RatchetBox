# `cpow`, `cpowf`, `cpowl`

Retrieves the value of a number raised to the specified power, where the base and exponent are complex numbers. This function has a branch cut for the exponent along the negative real axis.

## Syntax

```C
_Dcomplex cpow(
   _Dcomplex x, _Dcomplex y
);
_Fcomplex cpow(
   _Fcomplex x, _Fcomplex y
);  // C++ only
_Lcomplex cpow(
   _Lcomplex x, _Lcomplex y
);  // C++ only
_Fcomplex cpowf(
   _Fcomplex x, _Fcomplex y
);
_Lcomplex cpowl(
   _Lcomplex x, _Lcomplex y
);
```

### Parameters

*`x`*\
The base.

*`y`*\
The exponent.

## Return value

The value of *`x`* raised to the power of *`y`* with a branch cut for *`x`* along the negative real axis.

## Remarks

Because C++ allows overloading, you can call overloads of **`cpow`** that take and return `_Fcomplex` and `_Lcomplex` values. In a C program, **`cpow`** always takes and returns a `_Dcomplex` value.

## Requirements

| Routine | C header | C++ header |
|---|---|---|
| **`cpow`**, **`cpowf`**, **`cpowl`** | \<complex.h> | \<ccomplex> |

For more compatibility information, see [Compatibility](../compatibility.md).

## See also

[Alphabetical function reference](crt-alphabetical-function-reference.md)\
[`cexp`, `cexpf`, `cexpl`](cexp-cexpf-cexpl.md)\
[`clog10`, `clog10f`, `clog10l`](clog10-clog10f-clog10l.md)\
[`clog`, `clogf`, `clogl`](clog-clogf-clogl.md)