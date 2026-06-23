# MFSampleExtension\_MULTIPLEXED\_MANAGER attribute

Provides an instance of [**IMFMuxStreamSampleManager**](/windows/desktop/api/mfobjects/nn-mfobjects-imfmuxstreamsamplemanager) which is used to access the collection of samples from the substreams of a multiplexed media source.

## Data type

**[**IUnknown**](/windows/win32/api/unknwn/nn-unknwn-iunknown)**

## Remarks

Pass this value into [**IMFAttributes::GetUnknown**](/windows/desktop/api/mfobjects/nf-mfobjects-imfattributes-getunknown) to get an instance of [**IMFMuxStreamSampleManager**](/windows/desktop/api/mfobjects/nn-mfobjects-imfmuxstreamsamplemanager).

## Requirements



| Requirement | Value |
|-------------------------------------|------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows 10, version 1703 \[desktop apps only\]<br/>                          |
| Minimum supported server<br/> | None supported<br/>                                                          |
| Header<br/>                   | <dl> <dt>Mfidl.h</dt> </dl> |



 

 