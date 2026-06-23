# IDirectXFileObject::GetId method

Retrieves a pointer to the GUID that identifies a DirectX file object. Deprecated.

## Syntax


```C++
HRESULT GetId(
  [out, retval] 
            LPGUID pGuid
);
```



## Parameters

<dl> <dt>

*pGuid* \[out, retval\]
</dt> <dd>

Type: **LPGUID**

Pointer to a GUID to receive the object's ID. The function will set the GUID to a **NULL** GUID if the object does not have an ID.

</dd> </dl>

## Return value

Type: **[**HRESULT**](https://msdn.microsoft.com/library/Bb401631(v=MSDN.10).aspx)**

If the method succeeds, the return value is DXFILE\_OK. If the method fails, the return value can be DXFILEERR\_BADVALUE.

## Requirements



| Requirement | Value |
|--------------------|---------------------------------------------------------------------------------------|
| Header<br/>  | <dl> <dt>DXFile.h</dt> </dl>   |
| Library<br/> | <dl> <dt>D3dxof.lib</dt> </dl> |



## See also

<dl> <dt>

[IDirectXFileObject](idirectxfileobject.md)
</dt> </dl>

 

 



