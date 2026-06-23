# D3DXTX\_VERSION

Version token that creates a procedural texture filler in effects. This macro is used by the D3DXFillxxxTX functions.

``` syntax
#define D3DXTX_VERSION (_Major, _Minor) (('T' << 24) | ('X' << 16) | ((_Major) << 8) | (_Minor))
```

## Return Value

The macro returns the procedural texture version token.

## Requirements



| Requirement | Value |
|-------------------|------------------------------------------------------------------------------------------|
| Header<br/> | <dl> <dt>D3DX9Shader.h</dt> </dl> |



## See also

<dl> <dt>

[Macros](dx9-graphics-reference-d3dx-macros.md)
</dt> <dt>

[**D3DXFillTextureTX**](d3dxfilltexturetx.md)
</dt> <dt>

[**D3DXFillCubeTextureTX**](d3dxfillcubetexturetx.md)
</dt> <dt>

[**D3DXFillVolumeTextureTX**](d3dxfillvolumetexturetx.md)
</dt> </dl>

**Header:** D3DX9Shader.h
