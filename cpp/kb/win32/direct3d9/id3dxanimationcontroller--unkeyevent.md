# ID3DXAnimationController::UnkeyEvent method

Removes a specified event from an animation track, preventing the execution of the event.

## Syntax


```C++
HRESULT UnkeyEvent(
  [in] D3DXEVENTHANDLE hEvent
);
```



## Parameters

<dl> <dt>

*hEvent* \[in\]
</dt> <dd>

Type: **[**D3DXEVENTHANDLE**](id3dxanimationcontroller.md)**

Event handle to the event to be removed from the animation track.

</dd> </dl>

## Return value

Type: **[**HRESULT**](https://msdn.microsoft.com/library/Bb401631(v=MSDN.10).aspx)**

If the method succeeds, the return value is S\_OK. If the method fails, the following value will be returned: D3DERR\_INVALIDCALL.

## Requirements



| Requirement | Value |
|--------------------|----------------------------------------------------------------------------------------|
| Header<br/>  | <dl> <dt>D3dx9anim.h</dt> </dl> |
| Library<br/> | <dl> <dt>D3dx9.lib</dt> </dl>   |



## See also

<dl> <dt>

[ID3DXAnimationController](id3dxanimationcontroller.md)
</dt> </dl>

 

 



