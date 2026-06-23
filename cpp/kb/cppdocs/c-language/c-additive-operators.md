# C Additive Operators

The additive operators perform addition (**`+`**) and subtraction (**`-`**).

## Syntax

*`additive-expression`*:\
&emsp;*`multiplicative-expression`*\
&emsp;*`additive-expression`* **`+`** *`multiplicative-expression`*\
&emsp;*`additive-expression`* **`-`** *`multiplicative-expression`*

> [!NOTE]
> Although the syntax for *`additive-expression`* includes *`multiplicative-expression`*, this does not imply that expressions using multiplication are required. See the syntax in [C Language Syntax Summary](../c-language/c-language-syntax-summary.md), for *`multiplicative-expression`*, *cast-expression*, and *unary-expression*.

The operands can be integral or floating values. Some additive operations can also be performed on pointer values, as outlined under the discussion of each operator.

The additive operators perform the usual arithmetic conversions on integral and floating operands. The type of the result is the type of the operands after conversion. Since the conversions performed by the additive operators don't provide for overflow or underflow conditions, information may be lost if the result of an additive operation isn't representable in the type of the operands after conversion.

## See also

[Additive Operators: `+` and `-`](../cpp/additive-operators-plus-and.md)