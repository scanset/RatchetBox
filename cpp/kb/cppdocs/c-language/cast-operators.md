# Cast Operators

A type cast provides a method for explicit conversion of the type of an object in a specific situation.

## Syntax

*`cast-expression`*:\
&emsp;*`unary-expression`*\
&emsp;**`(`** *`type-name`* **`)`** *`cast-expression`*

The compiler treats *`cast-expression`* as type *`type-name`* after a type cast has been made. Casts can be used to convert objects of any scalar type to or from any other scalar type. Explicit type casts are constrained by the same rules that determine the effects of implicit conversions, discussed in [Assignment Conversions](../c-language/assignment-conversions.md). Additional restraints on casts may result from the actual sizes or representation of specific types. See [Storage of Basic Types](../c-language/storage-of-basic-types.md) for information on actual sizes of integral types. For more information on type casts, see [Type-Cast Conversions](../c-language/type-cast-conversions.md).

## See also

[Cast Operator: `()`](../cpp/cast-operator-parens.md)