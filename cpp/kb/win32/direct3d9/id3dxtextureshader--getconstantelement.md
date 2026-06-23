# ID3DXTextureShader::GetConstantElement method

Get a constant from the constant table.

## Syntax


```C++
D3DXHANDLE GetConstantElement(
  [in] D3DXHANDLE hConstant,
  [in] UINT       Index
);
```



## Parameters

<dl> <dt>

*hConstant* \[in\]
</dt> <dd>

Type: **[D3DXHANDLE](dx9-graphics-reference-effects-constants.md)**

A [handle](handles.md) to the array of constants. This value may not be **NULL**.

</dd> <dt>

*Index* \[in\]
</dt> <dd>

Type: **[**UINT**](../winprog/windows-data-types.md)**

Zero-based index of the element in the constant table.

</dd> </dl>

## Return value

Type: **[D3DXHANDLE](dx9-graphics-reference-effects-constants.md)**

Returns a unique identifier to the constant.

## Remarks

To get a constant that is not part of an array, use [**ID3DXTextureShader::GetConstant**](id3dxtextureshader--getconstant.md) or [**ID3DXTextureShader::GetConstantByName**](id3dxtextureshader--getconstantbyname.md).

## Requirements



| Requirement | Value |
|--------------------|------------------------------------------------------------------------------------------|
| Header<br/>  | <dl> <dt>D3DX9Shader.h</dt> </dl> |
| Library<br/> | <dl> <dt>D3dx9.lib</dt> </dl>     |



## See also

<dl> <dt>

[ID3DXTextureShader](id3dxtextureshader.md)
</dt> </dl>

 

 