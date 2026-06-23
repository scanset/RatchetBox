# D3DXGetDeclVertexSize function

Returns the size of a vertex from the vertex declaration.

## Syntax


```C++
UINT D3DXGetDeclVertexSize(
  _In_ const D3DVERTEXELEMENT9 *pDecl,
  _In_       DWORD             Stream
);
```



## Parameters

<dl> <dt>

*pDecl* \[in\]
</dt> <dd>

Type: **const [**D3DVERTEXELEMENT9**](d3dvertexelement9.md)\***

A pointer to the vertex declaration. See [**D3DVERTEXELEMENT9**](d3dvertexelement9.md).

</dd> <dt>

*Stream* \[in\]
</dt> <dd>

Type: **[**DWORD**](../winprog/windows-data-types.md)**

The zero-based stream index.

</dd> </dl>

## Return value

Type: **[**UINT**](../winprog/windows-data-types.md)**

The vertex declaration size, in bytes.

## Requirements



| Requirement | Value |
|--------------------|----------------------------------------------------------------------------------------|
| Header<br/>  | <dl> <dt>D3DX9Mesh.h</dt> </dl> |
| Library<br/> | <dl> <dt>D3dx9.lib</dt> </dl>   |



## See also

<dl> <dt>

[Mesh Functions](dx9-graphics-reference-d3dx-functions-mesh.md)
</dt> </dl>

 

 