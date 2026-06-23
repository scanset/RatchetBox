# endloop - ps

End of a [loop - ps](loop---ps.md)...endloop block.

## Remarks



| Pixel shader versions | 1\_1 | 1\_2 | 1\_3 | 1\_4 | 2\_0 | 2\_x | 2\_sw | 3\_0 | 3\_sw |
|-----------------------|------|------|------|------|------|------|-------|------|-------|
| endloop               |      |      |      |      |      |      |       | x    | x     |



 

endloop must follow the last instruction of a [loop - ps](loop---ps.md) block.

## Example


```
loop aL, i3
    add r1, r0, c2[ aL ]
endloop
```



## Related topics

<dl> <dt>

[Pixel Shader Instructions](dx9-graphics-reference-asm-ps-instructions.md)
</dt> </dl>

 

 



