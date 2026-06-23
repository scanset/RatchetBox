# call - ps

Performs a function call to the instruction marked with the provided label.

## Syntax



| call l\# |
|----------|



 

Where:

-   l\# is a [label - ps](label---ps.md) marking the beginning of the subroutine to be called.

## Remarks



| Pixel shader versions | 1\_1 | 1\_2 | 1\_3 | 1\_4 | 2\_0 | 2\_x | 2\_sw | 3\_0 | 3\_sw |
|-----------------------|------|------|------|------|------|------|-------|------|-------|
| call                  |      |      |      |      |      | x    | x     | x    | x     |



 

This instruction does the following:

1.  Push address of the next instruction to the return address stack.
2.  Continue execution from the instruction marked by the label.

## Related topics

<dl> <dt>

[Pixel Shader Instructions](dx9-graphics-reference-asm-ps-instructions.md)
</dt> </dl>

 

 



