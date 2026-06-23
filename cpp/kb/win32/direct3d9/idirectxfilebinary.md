# IDirectXFileBinary interface

Applications use the methods of the IDirectXFileBinary interface to read and retrieve information about binary data. Deprecated.

## Members

The **IDirectXFileBinary** interface inherits from [**IDirectXFileObject**](idirectxfileobject.md). **IDirectXFileBinary** also has these types of members:

-   [Methods](#methods)

### Methods

The **IDirectXFileBinary** interface has these methods.



| Method                                                 | Description                                                                                                 |
|:-------------------------------------------------------|:------------------------------------------------------------------------------------------------------------|
| [**GetMimeType**](idirectxfilebinary--getmimetype.md) | Retrieves the Multipurpose Internet Mail Extensions (MIME) type for the binary data. Deprecated.<br/> |
| [**GetSize**](idirectxfilebinary--getsize.md)         | Retrieves the size of the binary data. Deprecated.<br/>                                               |
| [**Read**](idirectxfilebinary--read.md)               | Reads the binary data. Deprecated.<br/>                                                               |



 

## Remarks

The GUID for the IDirectXFileBinary interface is IID\_IDirectXFileBinary.

The LPDIRECTXFileBinary type is defined as a pointer to this interface.


```
typedef interface IDirectXFileBinary *LPDIRECTXFILEBINARY;
```



## Requirements



| Requirement | Value |
|--------------------|---------------------------------------------------------------------------------------|
| Header<br/>  | <dl> <dt>DXFile.h</dt> </dl>   |
| Library<br/> | <dl> <dt>D3dxof.lib</dt> </dl> |



## See also

<dl> <dt>

[**IDirectXFileObject**](idirectxfileobject.md)
</dt> <dt>

[X File Interfaces](dx9-graphics-reference-x-file-interfaces.md)
</dt> </dl>

 

 



