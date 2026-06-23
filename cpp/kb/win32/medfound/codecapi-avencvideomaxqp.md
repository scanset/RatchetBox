# CODECAPI\_AVEncVideoMaxQP property

Specifies the maximum QP supported by the encoder.

## Data type

**ULONG** (VT\_UI4)

## Property GUID

**CODECAPI\_AVEncVideoMaxQP**

## Remarks

**H.264/AVC encoders:**

The encoder shall support[**GetValue**](/windows/desktop/api/mfobjects/nf-mfobjects-imfmediaevent-getvalue), [**SetValue**](/windows/desktop/api/strmif/nf-strmif-icodecapi-setvalue), and [**GetParameterRange**](/windows/desktop/api/strmif/nf-strmif-icodecapi-getparameterrange).

This is a static property meaning that it can only be set before the encoding session starts.

Default value shall be the max QP allowed by the corresponding coding standard. For example, H.264 encoders shall have a default value of 51.

## Requirements



| Requirement | Value |
|-------------------------------------|---------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows 8.1 \[desktop apps \| UWP apps\]<br/>                                   |
| Minimum supported server<br/> | Windows Server 2012 R2 \[desktop apps \| UWP apps\]<br/>                        |
| Header<br/>                   | <dl> <dt>Codecapi.h</dt> </dl> |



## See also

<dl> <dt>

[Media Foundation Properties](media-foundation-properties.md)
</dt> <dt>

[CODECAPI\_AVEncVideoMinQP](codecapi-avencvideominqp.md)
</dt> </dl>

 
