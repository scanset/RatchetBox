# Compiler Error C3166

> 'pointer' : cannot declare a pointer to an interior __gc pointer as a member of 'type'

## Remarks

The compiler found an invalid pointer declaration (a **`__nogc`** pointer to a **`__gc`** pointer.).

C3166 is only reachable using the obsolete compiler option **`/clr:oldSyntax`**.