# CD3DX12\_SHADER\_BYTECODE structure

A helper structure to enable easy initialization of a [**D3D12\_SHADER\_BYTECODE**](/windows/desktop/api/d3d12/ns-d3d12-d3d12_shader_bytecode) structure.

## Syntax


```C++
struct CD3DX12_SHADER_BYTECODE  : public D3D12_SHADER_BYTECODE{
   CD3DX12_SHADER_BYTECODE();
   explicit CD3DX12_SHADER_BYTECODE(const D3D12_SHADER_BYTECODE &o);
   CD3DX12_SHADER_BYTECODE(ID3DBlob* pShaderBlob);
   CD3DX12_SHADER_BYTECODE(const void* _pShaderBytecode, SIZE_T bytecodeLength);
   operator const D3D12_SHADER_BYTECODE&() const;
};
```



## Members

<dl> <dt>

**CD3DX12\_SHADER\_BYTECODE()**
</dt> <dd>

Creates a new, uninitialized, instance of a CD3DX12\_SHADER\_BYTECODE.

</dd> <dt>

**explicit CD3DX12\_SHADER\_BYTECODE(const D3D12\_SHADER\_BYTECODE &o)**
</dt> <dd>

Creates a new instance of a CD3DX12\_SHADER\_BYTECODE, initialized with the contents of another [**D3D12\_SHADER\_BYTECODE**](/windows/desktop/api/d3d12/ns-d3d12-d3d12_shader_bytecode) structure.

</dd> <dt>

**CD3DX12\_SHADER\_BYTECODE(ID3DBlob\* pShaderBlob)**
</dt> <dd>

Creates a new instance of a CD3DX12\_SHADER\_BYTECODE, initializing the following parameters:

[**ID3DBlob**](/previous-versions/windows/desktop/legacy/ff728743(v=vs.85))\* pShaderBlob

</dd> <dt>

**CD3DX12\_SHADER\_BYTECODE(const void\* \_pShaderBytecode, SIZE\_T bytecodeLength)**
</dt> <dd>

Creates a new instance of a CD3DX12\_SHADER\_BYTECODE, initializing the following parameters:

void\* \_pShaderBytecode

SIZE\_T bytecodeLength

</dd> <dt>

**operator const D3D12\_SHADER\_BYTECODE&() const**
</dt> <dd>

Defines the & pass-by-reference operator for the parent structure type.

</dd> </dl>

## Requirements



| Requirement | Value |
|-------------------|-------------------------------------------------------------------------------------|
| Header<br/> | <dl> <dt>D3dx12.h</dt> </dl> |



## See also

<dl> <dt>

[**D3D12\_SHADER\_BYTECODE**](/windows/desktop/api/d3d12/ns-d3d12-d3d12_shader_bytecode)
</dt> <dt>

[Helper Structures for D3D12](helper-structures-for-d3d12.md)
</dt> </dl>

**Header:** d3dx12.h
