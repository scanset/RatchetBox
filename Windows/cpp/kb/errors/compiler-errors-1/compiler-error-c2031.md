# Compiler Error C2031

> a virtual destructor with '*accessibility*' accessibility is not allowed for this type\
> a virtual destructor must have 'public' accessibility

## Remarks

A virtual Windows Runtime class has an access specifier or **`sealed`** specifier that's not allowed for a virtual destructor. For more information, see [Ref classes and structs](../../cppcx/ref-classes-and-structs-c-cx.md).

To fix this error, change the accessibility of the destructor.