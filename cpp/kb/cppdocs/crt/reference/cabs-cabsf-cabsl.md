# `cabs`, `cabsf`, `cabsl`

Retrieves the absolute value of a complex number.

## Syntax

```C
double cabs(
   _Dcomplex z
);
float cabs(
   _Fcomplex z
);  // C++ only
long double cabs(
   _Lcomplex z
);  // C++ only
float cabsf(
   _Fcomplex z
);
long double cabsl(
   _Lcomplex z
);
```

### Parameters

*`z`*\
A complex number.

## Return value

The absolute value of *`z`*.

## Remarks

Because C++ allows overloading, you can call overloads of **`cabs`** that take `_Fcomplex` or `_Lcomplex` values, and return **`float`** or **`long double`** values. In a C program, **`cabs`** always takes a `_Dcomplex` value and returns a **`double`** value.

## Requirements

| Routine | C header | C++ header |
|---|---|---|
| **`cabs`**, **`cabsf`**, **`cabsl`** | \<complex.h> | \<ccomplex> |

For more compatibility information, see [Compatibility](../compatibility.md).

## See also

[Alphabetical function reference](crt-alphabetical-function-reference.md)\
[`norm`, `normf`, `norml`](norm-normf-norml1.md)\
[`creal`, `crealf`, `creall`](creal-crealf-creall.md)\
[`cproj`, `cprojf`, `cprojl`](cproj-cprojf-cprojl.md)\
[`conj`, `conjf`, `conjl`](conj-conjf-conjl.md)\
[`cimag`, `cimagf`, `cimagl`](cimag-cimagf-cimagl.md)\
[`carg`, `cargf`, `cargl`](carg-cargf-cargl.md)