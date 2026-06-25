# IDirectXFileData::GetType method

Retrieves the GUID of the object's template. Deprecated.

## Syntax


```C++
HRESULT GetType(
  [out, retval] const GUID **ppguid
);
```



## Parameters

<dl> <dt>

*ppguid* \[out, retval\]
</dt> <dd>

Type: **const [**GUID**](guid.md)\*\***

Address of a pointer to receive the GUID of the object's template.

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

[IDirectXFileData](idirectxfiledata.md)
</dt> </dl>

 

 



