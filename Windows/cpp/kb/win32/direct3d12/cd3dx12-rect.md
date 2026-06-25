# CD3DX12\_RECT structure

A helper structure to enable easy initialization of a [**D3D12\_RECT**](d3d12-rect.md) structure.

## Syntax


```C++
struct CD3DX12_RECT  : public D3D12_RECT{
   CD3DX12_RECT();
   explicit CD3DX12_RECT(const D3D12_RECT& o);
   explicit CD3DX12_RECT(LONG Left, LONG Top, LONG Right, LONG Bottom);
   ~CD3DX12_RECT();
   operator const D3D12_RECT&() const;
};
```



## Members

<dl> <dt>

**CD3DX12\_RECT()**
</dt> <dd>

Creates a new, uninitialized, instance of a CD3DX12\_RECT.

</dd> <dt>

**explicit CD3DX12\_RECT(const D3D12\_RECT& o)**
</dt> <dd>

Creates a new instance of a CD3DX12\_RECT, initialized with the contents of another [**D3D12\_RECT**](d3d12-rect.md) structure.

</dd> <dt>

**explicit CD3DX12\_RECT(LONG Left, LONG Top, LONG Right, LONG Bottom)**
</dt> <dd>

Creates a new instance of a CD3DX12\_RECT, initializing the following parameters:

LONG Left

LONG Top

LONG Right

LONG Bottom

</dd> <dt>

**~CD3DX12\_RECT()**
</dt> <dd>

Destroys an instance of a CD3DX12\_RECT.

</dd> <dt>

**operator const D3D12\_RECT&() const**
</dt> <dd>

Defines the & pass-by-reference operator for the parent structure type.

</dd> </dl>

## Requirements



| Requirement | Value |
|-------------------|-------------------------------------------------------------------------------------|
| Header<br/> | <dl> <dt>D3dx12.h</dt> </dl> |



## See also

<dl> <dt>

[**D3D12\_RECT**](d3d12-rect.md)
</dt> <dt>

[Helper Structures for D3D12](helper-structures-for-d3d12.md)
</dt> </dl>

**Header:** d3dx12.h
