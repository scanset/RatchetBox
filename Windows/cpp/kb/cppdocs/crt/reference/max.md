# `__max`

A preprocessor macro that returns the larger of two values.

## Syntax

```C
#define __max(a,b) (((a) > (b)) ? (a) : (b))
```

### Parameters

*`a`*, *`b`*\
Values of any numeric type to be compared.

## Return value

**`__max`** returns the larger of its arguments.

## Remarks

The **`__max`** macro compares two values and returns the value of the larger one. The arguments can be of any numeric data type, signed or unsigned. Both arguments and the return value must be of the same data type.

The argument returned is evaluated twice by the macro. Double evaluation can lead to unexpected results if the argument is an expression that alters its value when it's evaluated, such as `*p++`.

## Requirements

| Macro | Required header |
|---|---|
| **`__max`** | \<stdlib.h> |

## Example

For more information, see the example for [`__min`](min.md).

## See also

[Math and floating-point support](../floating-point-support.md)\
[`__min`](min.md)