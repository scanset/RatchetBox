# IMFMediaStreamSourceSampleRequest interface

Represents a request for a sample from a MediaStreamSource.

## Members

The **IMFMediaStreamSourceSampleRequest** interface inherits from the [**IUnknown**](/windows/win32/api/unknwn/nn-unknwn-iunknown) interface. **IMFMediaStreamSourceSampleRequest** also has these types of members:

-   [Methods](#methods)

### Methods

The **IMFMediaStreamSourceSampleRequest** interface has these methods.



| Method                                                           | Description                                             |
|:-----------------------------------------------------------------|:--------------------------------------------------------|
| [**SetSample**](imfmediastreamsourcesamplerequest-setsample.md) | Sets the sample for the media stream source.<br/> |



 

## Remarks

**MFMediaStreamSourceSampleRequest** is implemented by the [**Windows.Media.Core.MediaStreamSourceSampleRequest**](/uwp/api/Windows.Media.Core.MediaStreamSourceSampleRequest) runtime class.

## Requirements



| Requirement | Value |
|-------------------------------------|--------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows 8.1 \[desktop apps \| UWP apps\]<br/>                                  |
| Minimum supported server<br/> | Windows Server 2012 R2 \[desktop apps \| UWP apps\]<br/>                       |
| IDL<br/>                      | <dl> <dt>Mfidl.idl</dt> </dl> |



## See also

<dl> <dt>

[Media Foundation Interfaces](media-foundation-interfaces.md)
</dt> </dl>

**Header:** mfidl.h
