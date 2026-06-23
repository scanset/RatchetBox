# Simple Assignment (C)

The simple-assignment operator assigns its right operand to its left operand. The value of the right operand is converted to the type of the assignment expression and replaces the value stored in the object designated by the left operand. The conversion rules for assignment apply (see [Assignment Conversions](../c-language/assignment-conversions.md)).

```
double x;
int y;

x = y;
```

In this example, the value of `y` is converted to type **`double`** and assigned to `x`.

## See also

[C Assignment Operators](../c-language/c-assignment-operators.md)