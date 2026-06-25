# trunc

Truncates a floating-point value to the integer component.



| ret trunc(*x*) |
|----------------|



 

## Parameters



| Item                                                   | Description                            |
|--------------------------------------------------------|----------------------------------------|
| <span id="x"></span><span id="X"></span>*x*<br/> | \[in\] The specified input.<br/> |



 

## Return Value

The input value truncated to an integer component.

## Remarks

This function truncates a floating-point value to the integer component. Given a floating-point value of 1.6, the trunc function would return 1.0, whereas the [**round (DirectX HLSL)**](dx-graphics-hlsl-round.md) function would return 2.0.

## Type Description



| Name | [**Template Type**](dx-graphics-hlsl-intrinsic-functions.md)                                                  | [**Component Type**](dx-graphics-hlsl-intrinsic-functions.md) | Size                         |
|------|----------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------|------------------------------|
| *x*  | [**scalar**](dx-graphics-hlsl-intrinsic-functions.md), **vector**, or **matrix** | [**float**](/windows/desktop/WinProg/windows-data-types)                        | any                          |
| ret  | Same type as input x                                                                                           | [**float**](/windows/desktop/WinProg/windows-data-types)                        | Same dimension(s) as input x |



 

## Minimum Shader Model

This function is supported in the following shader models.



| Shader Model                                                                       | Supported |
|------------------------------------------------------------------------------------|-----------|
| [Shader Model 1 (DirectX HLSL)](dx-graphics-hlsl-sm1.md) and higher shader models | yes       |



 

## Requirements



| Requirement | Value |
|-------------------|--------------------------------------------------------------------------------------------|
| Header<br/> | <dl> <dt>Corecrt\_math.h</dt> </dl> |



## See also

<dl> <dt>

[**Intrinsic Functions (DirectX HLSL)**](dx-graphics-hlsl-intrinsic-functions.md)
</dt> </dl>

**Header:** corecrt_math.h
