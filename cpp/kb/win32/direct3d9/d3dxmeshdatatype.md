# D3DXMESHDATATYPE enumeration

Defines the type of mesh data present in [**D3DXMESHDATA**](d3dxmeshdata.md).

## Syntax


```C++
typedef enum D3DXMESHDATATYPE { 
  D3DXMESHTYPE_MESH         = 0x001,
  D3DXMESHTYPE_PATCHMESH    = 0x003,
  D3DXMESHTYPE_FORCE_DWORD  = 0x7fffffff
} D3DXMESHDATATYPE, *LPD3DXMESHDATATYPE;
```



## Constants

<dl> <dt>

<span id="D3DXMESHTYPE_MESH"></span><span id="d3dxmeshtype_mesh"></span>**D3DXMESHTYPE\_MESH**
</dt> <dd>

The data type is a mesh. See [**ID3DXMesh**](id3dxmesh.md).

</dd> <dt>

<span id="D3DXMESHTYPE_PATCHMESH"></span><span id="d3dxmeshtype_patchmesh"></span>**D3DXMESHTYPE\_PATCHMESH**
</dt> <dd>

The data type is a patch mesh. See [**ID3DXPatchMesh**](id3dxpatchmesh.md).

</dd> <dt>

<span id="D3DXMESHTYPE_FORCE_DWORD"></span><span id="d3dxmeshtype_force_dword"></span>**D3DXMESHTYPE\_FORCE\_DWORD**
</dt> <dd>

Forces this enumeration to compile to 32 bits in size. Without this value, some compilers would allow this enumeration to compile to a size other than 32 bits. This value is not used.

</dd> </dl>

## Requirements



| Requirement | Value |
|-------------------|----------------------------------------------------------------------------------------|
| Header<br/> | <dl> <dt>D3dx9anim.h</dt> </dl> |



## See also

<dl> <dt>

[D3DX Enumerations](dx9-graphics-reference-d3dx-enums.md)
</dt> <dt>

[**D3DXMESHDATA**](d3dxmeshdata.md)
</dt> </dl>

**Header:** d3dx9anim.h
