# Compiler Error C2274

> 'type' : illegal as right side of '.' operator

## Remarks

A type appears as the right operand of a member-access (.) operator.

This error can be caused by trying to access a user-defined type conversion. Use the keyword **`operator`** between the period and `type`.