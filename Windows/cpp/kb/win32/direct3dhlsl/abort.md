# abort function

Submits an error message to the information queue and terminates the current draw or dispatch call being executed.

## Syntax

``` syntax
void abort(
    
);
```

## Parameters

<dl> <dt>

 
</dt> <dd>

None

</dd> </dl>

## Return value

This function does not return a value.

## Remarks

This operation does nothing on rasterizers that do not support it.

### Minimum Shader Model

This function is supported in the following shader models.



| Shader Model                                                        | Supported |
|---------------------------------------------------------------------|-----------|
| [Shader Model 4 (DirectX HLSL) or later.](dx-graphics-hlsl-sm3.md) | yes       |



 

## Requirements



| Requirement | Value |
|-------------------|---------------------------------------------------------------------------------------------------------------|
| Header<br/> | <dl> <dt>Corecrt\_terminate.h</dt> </dl> |



## See also

<dl> <dt>

[Intrinsic Functions](dx-graphics-hlsl-intrinsic-functions.md)
</dt> </dl>

**Header:** corecrt_terminate.h
