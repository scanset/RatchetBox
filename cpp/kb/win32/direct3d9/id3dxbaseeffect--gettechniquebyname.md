# ID3DXBaseEffect::GetTechniqueByName method

Gets the handle of a technique by looking up its name.

## Syntax


```C++
D3DXHANDLE GetTechniqueByName(
  [in] LPCSTR pName
);
```



## Parameters

<dl> <dt>

*pName* \[in\]
</dt> <dd>

Type: **[**LPCSTR**](../winprog/windows-data-types.md)**

String containing the technique name.

</dd> </dl>

## Return value

Type: **[D3DXHANDLE](dx9-graphics-reference-effects-constants.md)**

Returns the handle of the first technique that has the specified name, or **NULL** if the name was not found. See [Handles (Direct3D 9)](handles.md).

## Requirements



| Requirement | Value |
|--------------------|------------------------------------------------------------------------------------------|
| Header<br/>  | <dl> <dt>D3DX9Shader.h</dt> </dl> |
| Library<br/> | <dl> <dt>D3dx9.lib</dt> </dl>     |



## See also

<dl> <dt>

[ID3DXBaseEffect](id3dxbaseeffect.md)
</dt> </dl>

 

 