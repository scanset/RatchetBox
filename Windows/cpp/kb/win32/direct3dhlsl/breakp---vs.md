# breakp - vs

Conditionally break out of the current loop at the nearest [endloop - vs](endloop---vs.md) or [endrep - vs](endrep---vs.md). Use one of the components of the predicate register as a condition to determine whether or not to perform the instruction.

## Syntax



| breakp \[!\]p0.{x\|y\|z\|w} |
|-----------------------------|



 

Where:

-   \[!\] optional boolean NOT.
-   p0 is the predicate register. See [Predicate Register](dx9-graphics-reference-asm-vs-registers-predicate.md).
-   {x\|y\|z\|w} is the required replicate swizzle on p0.

## Remarks



| Vertex shader versions | 1\_1 | 2\_0 | 2\_x | 2\_sw | 3\_0 | 3\_sw |
|------------------------|------|------|------|-------|------|-------|
| breakp                 |      |      | x    | x     | x    | x     |



 

## Related topics

<dl> <dt>

[Vertex Shader Instructions](dx9-graphics-reference-asm-vs-instructions.md)
</dt> </dl>

 

 



