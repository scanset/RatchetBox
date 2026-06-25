# ID3DXPatchMesh::GenerateAdjacency method

Generate a list of mesh edges and the patches that share each edge.

## Syntax


```C++
HRESULT GenerateAdjacency(
  [in] FLOAT fTolerance
);
```



## Parameters

<dl> <dt>

*fTolerance* \[in\]
</dt> <dd>

Type: **[**FLOAT**](../winprog/windows-data-types.md)**

Specifies that vertices that differ in position by less than the tolerance should be treated as coincident.

</dd> </dl>

## Return value

Type: **[**HRESULT**](https://msdn.microsoft.com/library/Bb401631(v=MSDN.10).aspx)**

If the method succeeds, the return value is D3D\_OK. If the method fails, the return value can be one of the following: D3DERR\_INVALIDCALL, E\_OUTOFMEMORY.

## Remarks

After an application generates adjacency information for a mesh, the mesh data can be optimized for better drawing performance. This method determines which patches are adjacent (within the provided tolerance). This information is used internally to optimize tessellation.

## Requirements



| Requirement | Value |
|--------------------|----------------------------------------------------------------------------------------|
| Header<br/>  | <dl> <dt>D3DX9Mesh.h</dt> </dl> |
| Library<br/> | <dl> <dt>D3dx9.lib</dt> </dl>   |



## See also

<dl> <dt>

[ID3DXPatchMesh](id3dxpatchmesh.md)
</dt> <dt>

[**ID3DXPatchMesh::Optimize**](id3dxpatchmesh--optimize.md)
</dt> </dl>

 

 