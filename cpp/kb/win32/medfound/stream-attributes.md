# Stream Attributes

The following attributes apply to media streams. To get the attributes from a media sample, use the [**IMFMediaSourceEx::GetStreamAttributes**](/windows/desktop/api/mfidl/nf-mfidl-imfmediasourceex-getstreamattributes) method.



| Attribute                                                                                   | Description                                   |
|---------------------------------------------------------------------------------------------|-----------------------------------------------|
| [MFStreamExtension\_CameraExtrinsics](mfstreamextension-cameraextrinsics.md)               | The camera extrinsics for the stream.         |
| [MFStreamExtension\_PinholeCameraIntrinsics](mfstreamextension-pinholecameraintrinsics.md) | The pinhole camera intrinsics for the stream. |



 

Not every media stream contains every attribute listed here. In some cases, an attribute applies only to certain kinds of data.

## Related topics

<dl> <dt>

[**IMFSample**](/windows/desktop/api/mfobjects/nn-mfobjects-imfsample)
</dt> <dt>

[Media Foundation Attributes](media-foundation-attributes.md)
</dt> <dt>

[Media Samples](media-samples.md)
</dt> </dl>

 

 


