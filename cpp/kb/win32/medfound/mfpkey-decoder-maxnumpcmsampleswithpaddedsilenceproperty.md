# MFPKEY\_Decoder\_MaxNumPCMSamplesWithPaddedSilence Property

Specifies the maximum number of additional PCM samples that might be returned at the end of after decoding a file.

## Constant for IPropertyBag

Available only by using [**IPropertyStore**](/windows/win32/api/propsys/nn-propsys-ipropertystore).

## Data Type

VT\_I4

## Default Value

2048

## Remarks

This property can be used to estimate artificial silence that gets is inserted between songs as they are fed to the decoder one after another.

For the Windows Media Audio 10 Professional and Windows Media Audio 9 Lossless decoders, this property is always equal to 0.

## Requirements



| Requirement | Value |
|-------------------------------------|-----------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows XP \[desktop apps only\]<br/>                                             |
| Minimum supported server<br/> | Windows Server 2003 \[desktop apps only\]<br/>                                    |
| Header<br/>                   | <dl> <dt>Wmcodecdsp.h</dt> </dl> |



## See also

<dl> <dt>

[Media Foundation Properties](media-foundation-properties.md)
</dt> </dl>

 

 