# ID3DXFileSaveObject::GetFile method

Gets the [**ID3DXFile**](id3dxfile.md) interface of the object that created this [**ID3DXFileSaveObject**](id3dxfilesaveobject.md) object.

## Syntax


```C++
HRESULT GetFile(
  [in] ID3DXFile ppFile
);
```



## Parameters

<dl> <dt>

*ppFile* \[in\]
</dt> <dd>

Type: **[**ID3DXFile**](id3dxfile.md)**

Address of a pointer to an [**ID3DXFile**](id3dxfile.md) object.

</dd> </dl>

## Return value

Type: **[**HRESULT**](https://msdn.microsoft.com/library/Bb401631(v=MSDN.10).aspx)**

If the method succeeds, the return value is S\_OK. If the method fails, the return value can be one of the following: D3DXFERR\_BADVALUE, E\_NOINTERFACE, E\_POINTER.

## Requirements



| Requirement | Value |
|--------------------|---------------------------------------------------------------------------------------|
| Header<br/>  | <dl> <dt>D3DX9Xof.h</dt> </dl> |
| Library<br/> | <dl> <dt>D3dx9.lib</dt> </dl>  |



## See also

<dl> <dt>

[ID3DXFileSaveObject](id3dxfilesaveobject.md)
</dt> </dl>

 

 



