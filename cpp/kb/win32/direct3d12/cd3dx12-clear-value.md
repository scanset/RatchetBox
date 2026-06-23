# CD3DX12\_CLEAR\_VALUE structure

A helper structure to enable easy initialization of a [**D3D12\_CLEAR\_VALUE**](/windows/desktop/api/d3d12/ns-d3d12-d3d12_clear_value) structure.

## Syntax


```C++
struct CD3DX12_CLEAR_VALUE  : public D3D12_CLEAR_VALUE{
   CD3DX12_CLEAR_VALUE();
   explicit CD3DX12_CLEAR_VALUE(const D3D12_CLEAR_VALUE &o);
   CD3DX12_CLEAR_VALUE(DXGI_FORMAT format, const FLOAT color[ 4 ]);
   CD3DX12_CLEAR_VALUE(DXGI_FORMAT format, FLOAT depth, UINT8 stencil);
   operator const D3D12_CLEAR_VALUE&() const;
};
```



## Members

<dl> <dt>

**CD3DX12\_CLEAR\_VALUE()**
</dt> <dd>

Creates a new, uninitialized, instance of a CD3DX12\_CLEAR\_VALUE.

</dd> <dt>

**explicit CD3DX12\_CLEAR\_VALUE(const D3D12\_CLEAR\_VALUE &o)**
</dt> <dd>

Creates a new instance of a CD3DX12\_CLEAR\_VALUE, initialized with the contents of another [**D3D12\_CLEAR\_VALUE**](/windows/desktop/api/d3d12/ns-d3d12-d3d12_clear_value) structure.

</dd> <dt>

**CD3DX12\_CLEAR\_VALUE(DXGI\_FORMAT format, const FLOAT color\[ 4 \])**
</dt> <dd>

Creates a new instance of a CD3DX12\_CLEAR\_VALUE, initializing the following parameters:

[**DXGI\_FORMAT**](/windows/desktop/api/dxgiformat/ne-dxgiformat-dxgi_format) format

FLOAT color\[ 4 \]

</dd> <dt>

**CD3DX12\_CLEAR\_VALUE(DXGI\_FORMAT format, FLOAT depth, UINT8 stencil)**
</dt> <dd>

Creates a new instance of a CD3DX12\_CLEAR\_VALUE, initializing the following parameters:

[**DXGI\_FORMAT**](/windows/desktop/api/dxgiformat/ne-dxgiformat-dxgi_format) format

FLOAT depth

UINT8 stencil

</dd> <dt>

**operator const D3D12\_CLEAR\_VALUE&() const**
</dt> <dd>

Defines the & pass-by-reference operator for the parent structure type.

</dd> </dl>

## Requirements



| Requirement | Value |
|-------------------|-------------------------------------------------------------------------------------|
| Header<br/> | <dl> <dt>D3dx12.h</dt> </dl> |



## See also

<dl> <dt>

[**D3D12\_CLEAR\_VALUE**](/windows/desktop/api/d3d12/ns-d3d12-d3d12_clear_value)
</dt> <dt>

[Helper Structures for D3D12](helper-structures-for-d3d12.md)
</dt> </dl>

**Header:** d3dx12.h
