# ID3DXFileData::Unlock method

Ends the lifespan of the *ppData* pointer returned by [**ID3DXFileData::Lock**](id3dxfiledata--lock.md).

## Syntax


```C++
BOOL Unlock();
```



## Parameters

This method has no parameters.

## Return value

Type: **[**BOOL**](../winprog/windows-data-types.md)**

The return value is S\_OK.

## Remarks

You must ensure that the number of [**ID3DXFileData::Lock**](id3dxfiledata--lock.md) calls matches the number of **ID3DXFileData::Unlock** calls. After calling Unlock, the ppData pointer returned by **ID3DXFileData::Lock** should no longer be used.

## Requirements



| Requirement | Value |
|--------------------|---------------------------------------------------------------------------------------|
| Header<br/>  | <dl> <dt>D3DX9Xof.h</dt> </dl> |
| Library<br/> | <dl> <dt>D3dx9.lib</dt> </dl>  |



## See also

<dl> <dt>

[ID3DXFileData](id3dxfiledata.md)
</dt> </dl>

 

 