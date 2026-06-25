# Compiler Error C3610

> 'valuetype': value type must be 'boxed' before method 'method' can be called

## Remarks

By default, a value type is not on the managed heap. Before you can call methods from .NET runtime classes, such as `Object`, you need to move the value type to the managed heap.

C3610 is only reachable using the obsolete compiler option **/clr:oldSyntax**.