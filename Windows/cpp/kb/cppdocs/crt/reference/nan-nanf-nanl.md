# `nan`, `nanf`, `nanl`

Returns a quiet NaN value.

## Syntax

```C
double nan( const char* input );
float nanf( const char* input );
long double nanl( const char* input );
```

### Parameters

*`input`*\
A string value.

## Return value

The **`nan`** functions return a quiet NaN value.

## Remarks

The **`nan`** functions return a floating-point value that corresponds to a quiet (non-signalling) NaN. The *`input`* value is ignored. For information about how a NaN is represented for output, see [`printf`, `_printf_l`, `wprintf`, `_wprintf_l`](printf-printf-l-wprintf-wprintf-l.md).

By default, this function's global state is scoped to the application. To change this behavior, see [Global state in the CRT](../global-state.md).

## Requirements

| Function | C header | C++ header |
|---|---|---|
| **`nan`**, **`nanf`**, **`nanl`** | \<math.h> | \<cmath> or \<math.h> |

## See also

[Math and floating-point support](../floating-point-support.md)\
[`fpclassify`](fpclassify.md)\
[`_fpclass`, `_fpclassf`](fpclass-fpclassf.md)\
[`isfinite`, `_finite`, `_finitef`](finite-finitef.md)\
[`isinf`](isinf.md)\
[`isnan`, `_isnan`, `_isnanf`](isnan-isnan-isnanf.md)\
[`isnormal`](isnormal.md)