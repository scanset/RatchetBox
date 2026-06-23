# RWStructuredBuffer::Operator  function

Returns a resource variable.

## Syntax

``` syntax
R Operator[](
  in uint pos
);
```

## Parameters

<dl> <dt>

*pos* \[in\]
</dt> <dd>

Type: **uint**

The index position.

</dd> </dl>

## Return value

Type: **R**

A resource variable.

## Remarks

A structured resource can be further indexed based on the component names of the structures.

This function is supported for the following types of shaders:



| Vertex | Hull | Domain | Geometry | Pixel | Compute |
|--------|------|--------|----------|-------|---------|
|        |      |        |          | x     | x       |



 

## See also

<dl> <dt>

[RWStructuredBuffer](sm5-object-rwstructuredbuffer.md)
</dt> <dt>

[Shader Model 5](d3d11-graphics-reference-sm5.md)
</dt> </dl>

 

 



