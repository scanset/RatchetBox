# ID3DXBaseEffect::GetParameterBySemantic method

Gets the handle of a top-level parameter or a structure member parameter by looking up its semantic with a case-insensitive search.

## Syntax


```C++
D3DXHANDLE GetParameterBySemantic(
  [in] D3DXHANDLE hParameter,
  [in] LPCSTR     pSemantic
);
```



## Parameters

<dl> <dt>

*hParameter* \[in\]
</dt> <dd>

Type: **[D3DXHANDLE](dx9-graphics-reference-effects-constants.md)**

Handle of the parameter, or **NULL** for top-level parameters. See [Handles (Direct3D 9)](handles.md).

</dd> <dt>

*pSemantic* \[in\]
</dt> <dd>

Type: **[**LPCSTR**](../winprog/windows-data-types.md)**

String containing the semantic name.

</dd> </dl>

## Return value

Type: **[D3DXHANDLE](dx9-graphics-reference-effects-constants.md)**

Returns the handle of the first parameter that matches the specified semantic, or **NULL** if the semantic was not found. See [Handles (Direct3D 9)](handles.md).

## Requirements



| Requirement | Value |
|--------------------|------------------------------------------------------------------------------------------|
| Header<br/>  | <dl> <dt>D3DX9Shader.h</dt> </dl> |
| Library<br/> | <dl> <dt>D3dx9.lib</dt> </dl>     |



## See also

<dl> <dt>

[ID3DXBaseEffect](id3dxbaseeffect.md)
</dt> </dl>

 

 