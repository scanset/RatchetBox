# Expression Evaluator Error CXX0030

> expression not evaluatable

## Remarks

The debugger's expression evaluator could not obtain a value for the expression as written. One likely cause is that the expression refers to memory that is outside the program's address space (dereferencing a null pointer is one example). Windows does not allow access to memory that is outside of the program's address space.

You may want to rewrite your expression using parentheses to control the order of evaluation.

This error is identical to CAN0030.