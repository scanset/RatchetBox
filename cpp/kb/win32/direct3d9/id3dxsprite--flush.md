# ID3DXSprite::Flush method

Forces all batched sprites to be submitted to the device. Device states remain as they were after the last call to [**ID3DXSprite::Begin**](id3dxsprite--begin.md). The list of batched sprites is then cleared.

## Syntax


```C++
HRESULT Flush();
```



## Parameters

This method has no parameters.

## Return value

Type: **[**HRESULT**](https://msdn.microsoft.com/library/Bb401631(v=MSDN.10).aspx)**

If the method succeeds, the return value is S\_OK. If the method fails, the following value will be returned.D3DERR\_INVALIDCALL

## Requirements



| Requirement | Value |
|--------------------|----------------------------------------------------------------------------------------|
| Header<br/>  | <dl> <dt>D3dx9core.h</dt> </dl> |
| Library<br/> | <dl> <dt>D3dx9.lib</dt> </dl>   |



## See also

<dl> <dt>

[ID3DXSprite](id3dxsprite.md)
</dt> <dt>

[**ID3DXSprite::End**](id3dxsprite--end.md)
</dt> </dl>

 

 



