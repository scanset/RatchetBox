# IMFMediaSourceExtension::IsTypeSupported method

Gets a value that indicates if the specified MIME type is supported by the media source.

## Syntax


```C++
BOOL IsTypeSupported(
  [in] BSTR type
);
```



## Parameters

<dl> <dt>

*type* \[in\]
</dt> <dd>

The media type to check support for.

</dd> </dl>

## Return value

**true** if the media type is supported; otherwise, **false**.

## Requirements



| Requirement | Value |
|-------------------------------------|----------------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows 8.1 \[desktop apps only\]<br/>                                                 |
| Minimum supported server<br/> | Windows Server 2012 R2 \[desktop apps only\]<br/>                                      |
| IDL<br/>                      | <dl> <dt>Mfmediaengine.idl</dt> </dl> |



## See also

<dl> <dt>

[**IMFMediaSourceExtension**](/windows/desktop/api/mfmediaengine/nn-mfmediaengine-imfmediasourceextension)
</dt> </dl>

**Header:** mfmediaengine.h
