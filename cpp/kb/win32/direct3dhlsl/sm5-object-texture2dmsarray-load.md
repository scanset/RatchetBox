# Texture2DMSArray::Load(int,int) function

Gets one value.

## Syntax

``` syntax
T Load(
  in int3 coord,
  in int sampleindex
);
```

## Parameters

<dl> <dt>

*coord* \[in\]
</dt> <dd>

Type: **int3**

The input location.

</dd> <dt>

*sampleindex* \[in\]
</dt> <dd>

Type: **[**int**](/windows/desktop/WinProg/windows-data-types)**

The sample index.

</dd> </dl>

## Return value

Type: **T**

One value, whose type matches the texture template type.

## Remarks

This is a list of the overloaded versions of this method.


```
void Load(in int3 coord,
  in int sampleindex,
  in int2 offset);
```



This function is supported for the following types of shaders:



| Vertex | Hull | Domain | Geometry | Pixel | Compute |
|--------|------|--------|----------|-------|---------|
|        |      |        |          | x     | x       |



 

## See also

<dl> <dt>

[Load methods](texture2dmsarray-load.md)
</dt> <dt>

[Shader Model 5](d3d11-graphics-reference-sm5.md)
</dt> </dl>

 

 