# Expression Evaluator Error CXX0039

> symbol is ambiguous

## Remarks

The C expression evaluator cannot determine which instance of a symbol to use in an expression. The symbol occurs more than once in the inheritance tree.

You must use the scope resolution operator (`::`) to explicitly specify the instance to use in the expression.

This error is identical to CAN0039.