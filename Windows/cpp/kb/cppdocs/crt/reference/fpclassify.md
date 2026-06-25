# `fpclassify`

Returns the floating-point classification of the argument.

## Syntax

```C
int fpclassify(
   /* floating-point */ x
);

int fpclassify(
   float x
); // C++ only

int fpclassify(
   double x
); // C++ only

int fpclassify(
   long double x
); // C++ only
```

### Parameters

*`x`*\
The floating-point value to test.

## Return value

**`fpclassify`** returns an integer value that indicates the floating-point class of the argument *`x`*. This table shows the possible values returned by **`fpclassify`**, defined in \<math.h>.

| Value | Description |
|---|---|
| `FP_NAN` | A quiet, signaling, or indeterminate NaN |
| `FP_INFINITE` | A positive or negative infinity |
| `FP_NORMAL` | A positive or negative normalized non-zero value |
| `FP_SUBNORMAL` | A positive or negative denormalized value |
| `FP_ZERO` | A positive or negative zero value |

## Remarks

In C, **`fpclassify`** is a macro; in C++, **`fpclassify`** is a function overloaded using argument types of **`float`**, **`double`**, or **`long double`**. In either case, the value returned depends on the effective type of the argument expression, and not on any intermediate representation. For example, a normal **`double`** or **`long double`** value can become an infinity, denormal, or zero value when converted to a **`float`**.

## Requirements

| Function/Macro | Required header (C) | Required header (C++) |
|---|---|---|
| **`fpclassify`** | \<math.h> | \<math.h> or \<cmath> |

The **`fpclassify`** macro and **`fpclassify`** functions conform to the ISO C99 and C++11 specifications. For more compatibility information, see [Compatibility](../compatibility.md).

## See also

[Math and floating-point support](../floating-point-support.md)\
[`isnan`, `_isnan`, `_isnanf`](isnan-isnan-isnanf.md)