# Compiler Error C2616

> 'conversion' : cannot implicitly convert a non-lvalue 'type1' to a 'type2' that is not const

## Remarks

A reference cannot be initialized from a non-lvalue.

This is an error under ANSI compatibility ([/Za](../../build/reference/za-ze-disable-language-extensions.md)) and a warning under Microsoft extensions (**/Ze**).