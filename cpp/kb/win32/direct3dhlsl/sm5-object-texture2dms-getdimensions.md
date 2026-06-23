# Texture2DMS::GetDimensions function

Returns the dimensions of the resource.

## Syntax

``` syntax
void GetDimensions(
  out UINT Width,
  out UINT Height,
  out UINT NumberOfSamples
);
```

## Parameters

<dl> <dt>

*Width* \[out\]
</dt> <dd>

Type: **[**UINT**](/windows/desktop/WinProg/windows-data-types)**

The resource width, in texels.

</dd> <dt>

*Height* \[out\]
</dt> <dd>

Type: **[**UINT**](/windows/desktop/WinProg/windows-data-types)**

The resource height, in texels.

</dd> <dt>

*NumberOfSamples* \[out\]
</dt> <dd>

Type: **[**UINT**](/windows/desktop/WinProg/windows-data-types)**

The number of sample locations.

</dd> </dl>

## Return value

This function does not return a value.

## Remarks

This is a list of the overloaded versions of this method.


```
void GetDimensions(out float Width,
  out float Height,
  out float NumberOfSamples);
```



This function is supported for the following types of shaders:



| Vertex | Hull | Domain | Geometry | Pixel | Compute |
|--------|------|--------|----------|-------|---------|
|        |      |        |          | x     | x       |



 

## See also

<dl> <dt>

[Texture2DMS](sm5-object-texture2dms.md)
</dt> <dt>

[Shader Model 5](d3d11-graphics-reference-sm5.md)
</dt> </dl>

 

 