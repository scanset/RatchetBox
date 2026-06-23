# ID3DXFileData::GetId method

Retrieves the GUID of this file data object.

## Syntax


```C++
HRESULT GetId(
  [out] 
            LPGUID pId
);
```



## Parameters

<dl> <dt>

*pId* \[out\]
</dt> <dd>

Type: **LPGUID**

Pointer to a GUID to receive the ID of this file data object. If the file data object has no ID, the returned parameter value will be GUID\_NULL.

</dd> </dl>

## Return value

Type: **[**HRESULT**](https://msdn.microsoft.com/library/Bb401631(v=MSDN.10).aspx)**

If the method succeeds, the return value is S\_OK. If the method fails, the following value will be returned: D3DXFERR\_BADVALUE.

## Requirements



| Requirement | Value |
|--------------------|---------------------------------------------------------------------------------------|
| Header<br/>  | <dl> <dt>D3DX9Xof.h</dt> </dl> |
| Library<br/> | <dl> <dt>D3dx9.lib</dt> </dl>  |



## See also

<dl> <dt>

[ID3DXFileData](id3dxfiledata.md)
</dt> </dl>

 

 



