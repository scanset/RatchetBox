# `isfinite`, `_finite`, `_finitef`

Determines whether a floating-point value is finite.

## Syntax

```C
int isfinite(
   /* floating-point */ x
); /* C-only macro */

template <class FloatingType>
inline bool isfinite(
   FloatingType x
) throw(); /* C++-only template function */

int _finite(
   double x
);

int _finitef(
   float x
); /* x64 and ARM/ARM64 only */
```

### Parameters

*`x`*\
The floating-point value to test.

## Return value

The `isfinite` macro and the `_finite` and `_finitef` functions return a non-zero value if *`x`* is either a normal or subnormal finite value. They return 0 if the argument is infinite or a NaN. The C++ inline template function `isfinite` behaves the same way, but returns **`true`** or **`false`**.

## Remarks

`isfinite` is a macro when compiled as C, and an inline template function when compiled as C++. The `_finite` and `_finitef` functions are Microsoft-specific. The `_finitef` function is only available when compiled for x86, ARM, or ARM64 platforms.

## Requirements

| Function | Required header (C) | Required header (C++) |
|---|---|---|
| `_finite` | \<float.h> or \<math.h> | \<float.h>, \<math.h>, \<cfloat>, or \<cmath> |
| `isfinite`, `_finitef` | \<math.h> | \<math.h> or \<cmath> |

For more compatibility information, see [Compatibility](../compatibility.md).

## See also

[Math and floating-point support](../floating-point-support.md)\
[`fpclassify`](fpclassify.md)\
[`_fpclass`, `_fpclassf`](fpclass-fpclassf.md)\
[`isinf`](isinf.md)\
[`isnan`, `_isnan`, `_isnanf`](isnan-isnan-isnanf.md)\
[`isnormal`](isnormal.md)