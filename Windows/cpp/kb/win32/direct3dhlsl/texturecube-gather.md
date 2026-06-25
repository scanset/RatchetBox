# TextureCube::Gather methods

Returns the four texel values that would be used in a bi-linear filtering operation.

See the documentation on [gather4](./gather4--sm5---asm-.md) for more information describing the underlying DXBC instruction.

### Overload list



| Method                                                     | Description                                                                                                              |
|:-----------------------------------------------------------|:-------------------------------------------------------------------------------------------------------------------------|
| [**Gather(S,float)**](dx-graphics-hlsl-to-gather.md)      | Samples a texture and returns the four samples (red component only) that are used for bilinear interpolation.<br/> |
| [**Gather(S,float,uint)**](tcube-gather-s-float-uint-.md) | Samples a texture and returns all four components along with status about the operation.<br/>                      |



## See also

<dl> <dt>

[**TextureCube**](texturecube.md)
</dt> </dl>

 
