# RWBuffer::GetDimensions function

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

The length, in elements, of the Buffer as set in the Unordered Resource View.

</dd> </dl>

## Return value

Nothing

## Remarks

This function is supported for the following types of shaders:



| Vertex | Hull | Domain | Geometry | Pixel | Compute |
|--------|------|--------|----------|-------|---------|
|        |      |        |          | x     | x       |



 

## See also

<dl> <dt>

[RWBuffer](sm5-object-rwbuffer.md)
</dt> <dt>

[Shader Model 5](d3d11-graphics-reference-sm5.md)
</dt> </dl>

 

 



