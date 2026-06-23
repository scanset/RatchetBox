# ByteAddressBuffer::GetDimensions function

Gets the length of the buffer.

## Syntax

``` syntax
void GetDimensions(
  out uint dim
);
```

## Parameters

<dl> <dt>

*dim* \[out\]
</dt> <dd>

Type: **uint**

The length, in bytes, of the buffer.

</dd> </dl>

## Return value

This function does not return a value.

## Remarks

This function is supported for the following types of shaders:



| Vertex | Hull | Domain | Geometry | Pixel | Compute |
|--------|------|--------|----------|-------|---------|
| x      | x    | x      | x        | x     | x       |



 

## See also

<dl> <dt>

[ByteAddressBuffer](sm5-object-byteaddressbuffer.md)
</dt> <dt>

[Shader Model 5](d3d11-graphics-reference-sm5.md)
</dt> </dl>

 

 



