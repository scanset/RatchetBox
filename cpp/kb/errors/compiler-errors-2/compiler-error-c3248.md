# Compiler Error C3248

> 'function1': function declared as '__sealed' cannot be overridden by 'function2'

## Remarks

A derived class tried to override a **__sealed** virtual method.

C3248 is only reachable using the obsolete compiler option **/clr:oldSyntax**.