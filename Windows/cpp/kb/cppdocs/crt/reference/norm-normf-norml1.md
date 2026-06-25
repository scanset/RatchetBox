# `norm`, `normf`, `norml`

Retrieves the squared magnitude of a complex number.

## Syntax

```C
double norm( _Dcomplex z );
float normf( _Fcomplex z );
long double norml( _Lcomplex z );
```

```cpp
float norm( _Fcomplex z );  // C++ only
long double norm( _Lcomplex z );  // C++ only
```

### Parameters

*`z`*\
A complex number.

## Return value

The squared magnitude of *`z`*.

## Remarks

Because C++ allows overloading, you can call overloads of **`norm`** that take `_Fcomplex` or `_Lcomplex` values, and return **`float`** or **`long double`** values. In a C program, **`norm`** always takes a `_Dcomplex` value and returns a **`double`** value.

## Requirements

| Routine | C header | C++ header |
|---|---|---|
| **`norm`**, **`normf`**, **`norml`** | \<complex.h> | \<complex.h> |

The `_Fcomplex`, `_Dcomplex`, and `_Lcomplex` types are Microsoft-specific equivalents of the unimplemented native C99 types **float _Complex**, **double _Complex**, and **long double _Complex**, respectively.  For more compatibility information, see [Compatibility](../compatibility.md).

## See also

[Alphabetical function reference](crt-alphabetical-function-reference.md)\
[`creal`, `crealf`, `creall`](creal-crealf-creall.md)\
[`cproj`, `cprojf`, `cprojl`](cproj-cprojf-cprojl.md)\
[`conj`, `conjf`, `conjl`](conj-conjf-conjl.md)\
[`cimag`, `cimagf`, `cimagl`](cimag-cimagf-cimagl.md)\
[`carg`, `cargf`, `cargl`](carg-cargf-cargl.md)\
[`cabs`, `cabsf`, `cabsl`](cabs-cabsf-cabsl.md)