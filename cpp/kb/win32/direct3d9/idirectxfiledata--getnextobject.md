# IDirectXFileData::GetNextObject method

Retrieves the next child data object, data reference object, or binary object in the DirectX file. Deprecated.

## Syntax


```C++
HRESULT GetNextObject(
  [out, retval] LPDIRECTXFILEOBJECT *ppChildObj
);
```



## Parameters

<dl> <dt>

*ppChildObj* \[out, retval\]
</dt> <dd>

Type: **[**LPDIRECTXFILEOBJECT**](idirectxfileobject.md)\***

Address of a pointer to an [**IDirectXFileObject**](idirectxfileobject.md) interface, representing the returned child object's file object interface.

</dd> </dl>

## Return value

Type: **[**HRESULT**](https://msdn.microsoft.com/library/Bb401631(v=MSDN.10).aspx)**

If the method succeeds, the return value is DXFILE\_OK. If the method fails, the return value can be one of the following values: DXFILEERR\_BADVALUE, DXFILEERR\_NOMOREOBJECTS.

## Remarks

To determine the type of object retrieved, use QueryInterface to query the retrieved object for support of [**IDirectXFileData**](idirectxfiledata.md), [**IDirectXFileDataReference**](idirectxfiledatareference.md), or [**IDirectXFileBinary**](idirectxfilebinary.md) interfaces. The interface supported indicates the type of object (data, data reference, or binary).

## Requirements



| Requirement | Value |
|--------------------|---------------------------------------------------------------------------------------|
| Header<br/>  | <dl> <dt>DXFile.h</dt> </dl>   |
| Library<br/> | <dl> <dt>D3dxof.lib</dt> </dl> |



## See also

<dl> <dt>

[**IDirectXFileBinary**](idirectxfilebinary.md)
</dt> <dt>

[**IDirectXFileData**](idirectxfiledata.md)
</dt> <dt>

[**IDirectXFileDataReference**](idirectxfiledatareference.md)
</dt> </dl>

 

 



