# Compiler Error C2030

> a destructor with 'protected private' accessibility cannot be a member of a class declared 'sealed'

## Remarks

A Windows Runtime class declared as **`sealed`** cannot have a protected private destructor. Only public virtual and private non-virtual destructors are allowed on sealed types. For more information, see [Ref classes and structs](../../cppcx/ref-classes-and-structs-c-cx.md).

To fix this error, change the accessibility of the destructor.