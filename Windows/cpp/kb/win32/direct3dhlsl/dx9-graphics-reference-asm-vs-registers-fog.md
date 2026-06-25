# Fog Register

This vertex shader output register contains a per-vertex fog color.

A register consists of properties that determine how each register behaves.



| Property        | Description                                                                                     |
|-----------------|-------------------------------------------------------------------------------------------------|
| Name            | oFog                                                                                            |
| Count           | One vector, of which only one component can be used and must be specified by the component mask |
| I/O permissions | Write-only.                                                                                     |



 

The output fog value registers. The value is the fog factor to be interpolated and then routed to the fog table. Only the scalar x-component of the fog is used.

## Related topics

<dl> <dt>

[Vertex Shader Registers](dx9-graphics-reference-asm-vs-registers.md)
</dt> </dl>

 

 



