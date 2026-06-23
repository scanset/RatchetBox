# MFPKEY\_VBRENABLED Property

Specifies whether the encoder uses variable-bit-rate (VBR) encoding. Read-write.

## Constant for IPropertyBag

**g\_wszWMVCVBREnabled**, **g\_wszWMCPAudioVBRSupported**

## Data Type

**VT\_BOOL**

## Default Value

**VARIANT\_FALSE**

## Remarks

This value must be set to **VARIANT\_TRUE** for any of the other VBR properties to be used by the codec.

After you set this value to **VARIANT\_TRUE** on the audio encoder, the output types retrieved by using the [**IMediaObject::GetOutputType**](/previous-versions/windows/desktop/api/mediaobj/nf-mediaobj-imediaobject-getoutputtype) method are VBR types.

## Requirements



| Requirement | Value |
|-------------------------------------|-----------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows XP \[desktop apps only\]<br/>                                             |
| Minimum supported server<br/> | Windows Server 2003 \[desktop apps only\]<br/>                                    |
| Header<br/>                   | <dl> <dt>Wmcodecdsp.h</dt> </dl> |



## See also

<dl> <dt>

[**MFPKEY\_CONSTRAIN\_ENUMERATED\_VBRQUALITY**](mfpkey-constrain-enumerated-vbrqualityproperty.md)
</dt> <dt>

[**MFPKEY\_DESIRED\_VBRQUALITY**](mfpkey-desired-vbrqualityproperty.md)
</dt> <dt>

[Media Foundation Properties](media-foundation-properties.md)
</dt> </dl>

 

 