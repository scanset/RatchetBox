# Compiler Error C2856

> #pragma hdrstop cannot be inside an #if block

## Remarks

The `hdrstop` pragma cannot be placed inside the body of a conditional compilation block.

Move the `#pragma hdrstop` statement to an area that is not contained in an `#if/#endif` block.