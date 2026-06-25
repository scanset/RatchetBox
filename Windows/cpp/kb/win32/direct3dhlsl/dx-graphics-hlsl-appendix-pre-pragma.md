# \#pragma Directive

Preprocessor directive that provides machine-specific or operating system-specific features while retaining overall compatibility with the C and C++ languages.



| \#pragma *token-string* |
|-------------------------|



 

## Parameters



| Item                                                                                    | Description                                                                                                                              |
|-----------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------------------------|
| <span id="token-string"></span><span id="TOKEN-STRING"></span>*token-string*<br/> | Series of characters that gives a specific compiler instruction and arguments. This parameter is subject to macro expansion. <br/> |



 

## Remarks

If the compiler finds a pragma it does not recognize, it issues a warning, but compilation continues.

The HLSL compiler recognizes the following pragmas:

-   [def](dx-graphics-hlsl-appendix-pre-pragma-def.md)
-   [message](message-pragma-directive--directx-hlsl-.md)
-   [pack\_matrix](dx-graphics-hlsl-appendix-pre-pragma-pack-matrix.md)
-   [warning](dx-graphics-hlsl-appendix-pre-pragma-warning.md)

## See also

<dl> <dt>

[Preprocessor Directives (DirectX HLSL)](dx-graphics-hlsl-appendix-preprocessor.md)
</dt> </dl>

 

 




