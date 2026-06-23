# MAX\_FVF\_DECL\_SIZE enumeration

This constant is the maximum number of vertex declarators for a mesh.

## Syntax


```C++
typedef enum  { 
  MAX_FVF_DECL_SIZE  = MAXD3DDECLLENGTH + 1
} MAX_FVF_DECL_SIZE;
```



## Constants

<dl> <dt>

<span id="MAX_FVF_DECL_SIZE"></span><span id="max_fvf_decl_size"></span>**MAX\_FVF\_DECL\_SIZE**
</dt> <dd>

The maximum number of elements in the vertex declaration. The additional (+1) is for [**D3DDECL\_END**](d3ddecl-end.md).

</dd> </dl>

## Remarks

MAXD3DDECLLENGTH is defined as a maximum of 64 (see d3d9types.h). This does not include the "end" marker vertex element.

## Requirements



| Requirement | Value |
|-------------------|----------------------------------------------------------------------------------------|
| Header<br/> | <dl> <dt>D3dx9mesh.h</dt> </dl> |



## See also

<dl> <dt>

[D3DX Enumerations](dx9-graphics-reference-d3dx-enums.md)
</dt> <dt>

[**ID3DXBaseMesh**](id3dxbasemesh.md)
</dt> <dt>

[**GetDeclaration**](/windows/win32/api/d3d9helper/nf-d3d9helper-idirect3dvertexdeclaration9-getdeclaration)
</dt> <dt>

[**D3DXDeclaratorFromFVF**](d3dxdeclaratorfromfvf.md)
</dt> <dt>

[**ID3DXSkinInfo**](id3dxskininfo.md)
</dt> </dl>

**Header:** d3dx9mesh.h
