# ID3DXPRTBuffer::ScaleBuffer method

Multiplies every value in the buffer by a constant value.

## Syntax


```C++
HRESULT ScaleBuffer(
  [in] FLOAT Scale
);
```



## Parameters

<dl> <dt>

*Scale* \[in\]
</dt> <dd>

Type: **[**FLOAT**](../winprog/windows-data-types.md)**

Constant value used to scale the buffer. Every value in the buffer is replaced by the product of this value and the original buffer value.

</dd> </dl>

## Return value

Type: **[**HRESULT**](https://msdn.microsoft.com/library/Bb401631(v=MSDN.10).aspx)**

If the method succeeds, the return value is S\_OK. If the method fails, the following value will be returned.

## Requirements



| Requirement | Value |
|--------------------|----------------------------------------------------------------------------------------|
| Header<br/>  | <dl> <dt>D3DX9Mesh.h</dt> </dl> |
| Library<br/> | <dl> <dt>D3dx9.lib</dt> </dl>   |



## See also

<dl> <dt>

[ID3DXPRTBuffer](id3dxprtbuffer.md)
</dt> </dl>

 

 