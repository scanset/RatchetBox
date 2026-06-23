# ID3DXPatchMesh::CloneMesh method

Creates a new patch mesh with the specified vertex declaration.

## Syntax


```C++
HRESULT CloneMesh(
  [in]                DWORD             Options,
  [in]          const D3DVERTEXELEMENT9 *pDecl,
  [out, retval]       LPD3DXPATCHMESH   *pMesh
);
```



## Parameters

<dl> <dt>

*Options* \[in\]
</dt> <dd>

Type: **[**DWORD**](../winprog/windows-data-types.md)**

Combination of one or more [**D3DXMESH**](./d3dxmesh.md) flags that specify creation options for the mesh.

</dd> <dt>

*pDecl* \[in\]
</dt> <dd>

Type: **const [**D3DVERTEXELEMENT9**](d3dvertexelement9.md)\***

Array of [**D3DVERTEXELEMENT9**](d3dvertexelement9.md) elements that specify the vertex format for the vertices in the output mesh.

</dd> <dt>

*pMesh* \[out, retval\]
</dt> <dd>

Type: **[**LPD3DXPATCHMESH**](id3dxpatchmesh.md)\***

Address of a pointer to an [**ID3DXPatchMesh**](id3dxpatchmesh.md) interface that represents the cloned mesh.

</dd> </dl>

## Return value

Type: **[**HRESULT**](https://msdn.microsoft.com/library/Bb401631(v=MSDN.10).aspx)**

If the method succeeds, the return value is D3D\_OK. If the method fails, the return value can be one of the following: D3DERR\_INVALIDCALL, E\_OUTOFMEMORY.

## Remarks

**CloneMesh** converts the vertex buffer to the new vertex declaration. Entries in the vertex declaration that are new to the original mesh are set to 0. If the current mesh has adjacency, the new mesh will also have adjacency.

## Requirements



| Requirement | Value |
|--------------------|----------------------------------------------------------------------------------------|
| Header<br/>  | <dl> <dt>D3DX9Mesh.h</dt> </dl> |
| Library<br/> | <dl> <dt>D3dx9.lib</dt> </dl>   |



## See also

<dl> <dt>

[ID3DXPatchMesh](id3dxpatchmesh.md)
</dt> </dl>

 

 