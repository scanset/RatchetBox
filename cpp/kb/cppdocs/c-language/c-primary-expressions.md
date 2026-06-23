# C primary expressions

Primary expressions are the building blocks of more complex expressions. They may be constants, identifiers, a [Generic selection](generic-selection.md), or an expression in parentheses.

## Syntax

*`primary-expression`*:\
&emsp;*`identifier`*\
&emsp;*`constant`*\
&emsp;*`string-literal`*\
&emsp;**`(`** *`expression`* **`)`**\
&emsp;*`generic-selection`*

*`expression`*:\
&emsp;*`assignment-expression`*\
&emsp;*`expression`* **`,`** *`assignment-expression`*

## See also

[Generic selection](generic-selection.md)\
[Operands and Expressions](../c-language/operands-and-expressions.md)