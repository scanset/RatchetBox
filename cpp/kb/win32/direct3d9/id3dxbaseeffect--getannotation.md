# ID3DXBaseEffect::GetAnnotation method

Gets the handle of an annotation.

## Syntax


```C++
D3DXHANDLE GetAnnotation(
  [in] D3DXHANDLE hObject,
  [in] UINT       Index
);
```



## Parameters

<dl> <dt>

*hObject* \[in\]
</dt> <dd>

Type: **[D3DXHANDLE](dx9-graphics-reference-effects-constants.md)**

Handle of a technique, pass, or top-level parameter. See [Handles (Direct3D 9)](handles.md).

</dd> <dt>

*Index* \[in\]
</dt> <dd>

Type: **[**UINT**](../winprog/windows-data-types.md)**

Annotation index.

</dd> </dl>

## Return value

Type: **[D3DXHANDLE](dx9-graphics-reference-effects-constants.md)**

Returns the handle of the specified annotation, or **NULL** if the index was invalid. See [Handles (Direct3D 9)](handles.md).

## Remarks

Annotations are user-specific data that can be attached to any technique, pass, or parameter. See [Handles (Direct3D 9)](handles.md).

## Requirements



| Requirement | Value |
|--------------------|------------------------------------------------------------------------------------------|
| Header<br/>  | <dl> <dt>D3DX9Effect.h</dt> </dl> |
| Library<br/> | <dl> <dt>D3dx9.lib</dt> </dl>     |



## See also

<dl> <dt>

[ID3DXBaseEffect](id3dxbaseeffect.md)
</dt> </dl>

 

 