# Compiler Error C2827

> 'operator operator' cannot be globally overridden with unary form

## Remarks

The operator cannot have a unary form outside of an object.

### To fix by using the following possible solutions

1. Make the overloaded operator local to an object.

1. Choose an appropriate unary operator to overload.