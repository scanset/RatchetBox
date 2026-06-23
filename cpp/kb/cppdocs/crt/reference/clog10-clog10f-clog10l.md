# `clog10`, `clog10f`, `clog10l`

Retrieves the logarithm (base 10) of a complex number.

## Syntax

```C
_Dcomplex clog10( _Dcomplex z );
_Fcomplex clog10f( _Fcomplex z );
_Lcomplex clog10l( _Lcomplex z );
```

```cpp
_Fcomplex clog10( _Fcomplex z );  // C++ only
_Lcomplex clog10( _Lcomplex z );  // C++ only
```

### Parameters

*`z`*\
The base of the logarithm.

## Return value

The possible return values are:

| *`z`* parameter | Return value |
|---|---|
| Positive | The logarithm (base 10) of *`z`* |
| Zero | - INF |
| Negative | NaN |
| NaN | NaN |
| + INF | + INF |

## Remarks

Because C++ allows overloading, you can call overloads of **`clog10`** that take and return `_Fcomplex` and `_Lcomplex` values. In a C program, **`clog10`** always takes and returns a `_Dcomplex` value.

## Requirements

| Routine | C header | C++ header |
|---|---|---|
| **`clog10`**, **`clog10f`**, **`clog10l`** | \<complex.h> | \<ccomplex> |

For more compatibility information, see [Compatibility](../compatibility.md).

## See also

[Alphabetical function reference](crt-alphabetical-function-reference.md)\
[`cexp`, `cexpf`, `cexpl`](cexp-cexpf-cexpl.md)\
[`cpow`, `cpowf`, `cpowl`](cpow-cpowf-cpowl.md)\
[`clog`, `clogf`, `clogl`](clog-clogf-clogl.md)