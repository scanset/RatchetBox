# Compiler Error C2016

> C requires that a struct or union has at least one member

## Remarks

The compiler found a **`struct`** or **`union`** defined with no members, which isn't allowed in C. For more information, see [Structures](../../c-language/structure-declarations.md) and [Unions](../../c-language/union-declarations.md).

To resolve this error, create at least one member in your **`struct`** or **`union`**.