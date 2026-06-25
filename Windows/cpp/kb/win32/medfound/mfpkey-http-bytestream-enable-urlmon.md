# MFPKEY\_HTTP\_ByteStream\_Enable\_Urlmon property

Enables the Microsoft Media Foundation HTTP byte stream to use URL monikers (also called *Urlmon*).



Data type

PROPVARIANT type (vt)

PROPVARIANT member

**VARIANT\_BOOL**

VT\_BOOL

**boolVal**



## Remarks

Use this property to configure the Media Foundation HTTP byte stream. To set the property, pass an [**IPropertyStore**](/windows/win32/api/propsys/nn-propsys-ipropertystore) pointer to the source resolver. For more information, see [Configuring a Media Source](configuring-a-media-source.md).

If the value is **VARIANT\_TRUE**, the HTTP byte stream uses Urlmon for HTTP transport. Otherwise, if the value is **VARIANT\_FALSE**, the byte stream uses WinHTTP.

The default value is **VARIANT\_TRUE** for Windows Store apps and **VARIANT\_FALSE** for Windows desktop application.

## Requirements



| Requirement | Value |
|-------------------|------------------------------------------------------------------------------------|
| Header<br/> | <dl> <dt>Mfidl.h</dt> </dl> |



## See also

<dl> <dt>

[Media Foundation Properties](media-foundation-properties.md)
</dt> </dl>

 

 