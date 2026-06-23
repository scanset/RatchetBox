# IDirectXFile interface

Applications use the methods of the IDirectXFile interface to create instances of the [**IDirectXFileEnumObject**](idirectxfileenumobject.md) and [**IDirectXFileSaveObject**](idirectxfilesaveobject.md) interfaces, and to register templates. Deprecated.

## Members

The **IDirectXFile** interface inherits from the [**IUnknown**](/windows/win32/api/unknwn/nn-unknwn-iunknown) interface. **IDirectXFile** also has these types of members:

-   [Methods](#methods)

### Methods

The **IDirectXFile** interface has these methods.



| Method                                                       | Description                                          |
|:-------------------------------------------------------------|:-----------------------------------------------------|
| [**CreateEnumObject**](idirectxfile--createenumobject.md)   | Creates an enumerator object. Deprecated.<br/> |
| [**CreateSaveObject**](idirectxfile--createsaveobject.md)   | Creates a save object. Deprecated.<br/>        |
| [**RegisterTemplates**](idirectxfile--registertemplates.md) | Registers custom templates. Deprecated.<br/>   |



 

## Remarks

The globally unique identifier (GUID) for the IDirectXFile interface is IID\_IDirectXFile.

The IDirectXFile interface is obtained by calling the [**DirectXFileCreate**](directxfilecreate.md) function.

The LPDIRECTXFILE type is defined as a pointer to this interface.


```
typedef interface IDirectXFile *LPDIRECTXFILE;
```



## Requirements



| Requirement | Value |
|--------------------|---------------------------------------------------------------------------------------|
| Header<br/>  | <dl> <dt>DXFile.h</dt> </dl>   |
| Library<br/> | <dl> <dt>D3dxof.lib</dt> </dl> |



## See also

<dl> <dt>

[X File Interfaces](dx9-graphics-reference-x-file-interfaces.md)
</dt> </dl>

 

 