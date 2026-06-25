# MF\_CUSTOM\_DECODE\_UNIT\_TYPE enumeration

Specifies the type of unit contained in an [**IMFSample**](/windows/desktop/api/mfobjects/nn-mfobjects-imfsample) in a [MFSampleExtension\_ForwardedDecodeUnits](mfsampleextension-forwardeddecodeunits.md) collection.

## Members



| Member                    | Description                                                             | Value |
|---------------------------|-------------------------------------------------------------------------|-------|
| **MF\_DECODE\_UNIT\_NAL** | The unit type is network abstraction layer unit (NALU). <br/>     | 0     |
| **MF\_DECODE\_UNIT\_SEI** | The unit type is Supplemental Enhancement Information (SEI).<br/> | 1     |



## Remarks

## Requirements



| Requirement | Value |
|-------------------------------------|------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows 10, version 1709 \[desktop apps only\]<br/>                          |
| Minimum supported server<br/> | Windows Server 2016 \[desktop apps only\]<br/>                               |
| Header<br/>                   | <dl> <dt>Mfapi.h</dt> </dl> |

**Header:** mfapi.h
