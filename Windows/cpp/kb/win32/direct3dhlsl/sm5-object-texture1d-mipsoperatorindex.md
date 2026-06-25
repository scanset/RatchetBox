# Texture1D::mips.Operator    function

Returns a read-only resource variable or a [**Texture1D**](sm5-object-texture1d.md).

## Syntax

``` syntax
R mips.Operator[][](
  in uint mipSlice,
  in uint pos
);
```

## Parameters

<dl> <dt>

*mipSlice* \[in\]
</dt> <dd>

Type: **uint**

The mip slice index.

</dd> <dt>

*pos* \[in\]
</dt> <dd>

Type: **uint**

The index position. Contains the x-coordinate.

</dd> </dl>

## Return value

Type: **R**

A read-only resource variable.

## Remarks

### Usage Example


```
Texture1D<float4> tex;
uint mip = 2;
uint pos = 1234;
float4 f = tex.mips[mip][pos];
      
```



This function is supported for the following types of shaders:



| Vertex | Hull | Domain | Geometry | Pixel | Compute |
|--------|------|--------|----------|-------|---------|
| x      | x    | x      | x        | x     | x       |



 

## See also

<dl> <dt>

[Texture1D](sm5-object-texture1d.md)
</dt> <dt>

[Shader Model 5](d3d11-graphics-reference-sm5.md)
</dt> </dl>

 

 



