# RWTexture2D::Operator  function

Returns a resource variable.

## Syntax

``` syntax
R Operator[](
  in uint2 pos
);
```

## Parameters

<dl> <dt>

*pos* \[in\]
</dt> <dd>

Type: **uint2**

The index position. Contains the (x, y) coordinates.

</dd> </dl>

## Return value

Type: **R**

A resource variable.

## Remarks

This function is supported for the following types of shaders:



| Vertex | Hull | Domain | Geometry | Pixel | Compute |
|--------|------|--------|----------|-------|---------|
|        |      |        |          | x     | x       |



 

## See also

<dl> <dt>

[RWTexture2D](sm5-object-rwtexture2d.md)
</dt> <dt>

[Shader Model 5](d3d11-graphics-reference-sm5.md)
</dt> </dl>

 

 



