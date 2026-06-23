# Compiler Error C2722

> '::operator' : illegal following operator command; use 'operator operator'

## Remarks

An `operator` statement redefines `::new` or `::delete`. The `new` and `delete` operators are global, so the scope resolution operator (`::`) is meaningless. Remove the `::` operator.