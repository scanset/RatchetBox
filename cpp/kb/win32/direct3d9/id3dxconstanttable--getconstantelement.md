# ID3DXConstantTable::GetConstantElement method

Gets a constant from an array of constants. An array is made up of elements.

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

Unique identifier to the array of constants. This value may not be **NULL**.

</dd> <dt>

*Index* \[in\]
</dt> <dd>

Type: **[**UINT**](../winprog/windows-data-types.md)**

Zero-based index of the element in the array.

</dd> </dl>

## Return value

Type: **[D3DXHANDLE](dx9-graphics-reference-effects-constants.md)**

Returns a unique identifier to the element constant.

## Remarks

To get a constant that is not part of an array, use [**ID3DXConstantTable::GetConstant**](id3dxconstanttable--getconstant.md) or [**ID3DXConstantTable::GetConstantByName**](id3dxconstanttable--getconstantbyname.md).

## Requirements



| Requirement | Value |
|--------------------|------------------------------------------------------------------------------------------|
| Header<br/>  | <dl> <dt>D3DX9Shader.h</dt> </dl> |
| Library<br/> | <dl> <dt>D3dx9.lib</dt> </dl>     |



## See also

<dl> <dt>

[ID3DXConstantTable](id3dxconstanttable.md)
</dt> </dl>

 

 