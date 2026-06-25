# Fatal Error C1025, C1115

> too many nested lambdas

## Remarks

The compiler detected more than an internal limit for nested lambdas in the same scope. The limit is 65,535 in recent versions of Visual Studio. To resolve this issue, reduce the number of nested lambdas in the current scope.