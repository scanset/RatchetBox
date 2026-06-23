# ID3DXEffect::IsParameterUsed method

Determines if a parameter is used by the technique.

## Syntax


```C++
BOOL IsParameterUsed(
  [in] D3DXHANDLE hParameter,
  [in] D3DXHANDLE hTechnique
);
```



## Parameters

<dl> <dt>

*hParameter* \[in\]
</dt> <dd>

Type: **[D3DXHANDLE](dx9-graphics-reference-effects-constants.md)**

Unique identifier for the parameter. See [Handles (Direct3D 9)](handles.md).

</dd> <dt>

*hTechnique* \[in\]
</dt> <dd>

Type: **[D3DXHANDLE](dx9-graphics-reference-effects-constants.md)**

Unique identifier for the technique. See [Handles (Direct3D 9)](handles.md).

</dd> </dl>

## Return value

Type: **[**BOOL**](../winprog/windows-data-types.md)**

Returns **TRUE** if the parameter is being used and returns **FALSE** if the parameter is not being used.

## Requirements



| Requirement | Value |
|--------------------|------------------------------------------------------------------------------------------|
| Header<br/>  | <dl> <dt>D3DX9Effect.h</dt> </dl> |
| Library<br/> | <dl> <dt>D3dx9.lib</dt> </dl>     |



## See also

<dl> <dt>

[ID3DXEffect](id3dxeffect.md)
</dt> </dl>

 

 