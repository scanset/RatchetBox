# IStorageProviderCopyHook interface

Exposes a method that determines whether the Shell will be allowed to move, copy, delete, or rename a folder in a cloud provider's sync root.

## Members

The **IStorageProviderCopyHook** interface inherits from the [**IUnknown**](/windows/win32/api/unknwn/nn-unknwn-iunknown) interface. **IStorageProviderCopyHook** also has these types of members:

- [Methods](#methods)

### Methods

The **IStorageProviderCopyHook** interface has these methods.



| Method                                           | Description                                                                                               |
|:-------------------------------------------------|:----------------------------------------------------------------------------------------------------------|
| [**CopyCallback**](nf-shobjidl-istorageprovidercopyhook-copycallback.md)               |  Determines whether the Shell will be allowed to move, copy, delete, or rename a folder in a cloud provider's sync root.                                                           |


## Requirements

| Requirement | Value |
|-------------------------------------|-----------------------------------------------------------------------------------------|
| Minimum supported client | Windows 10 Insider Preview Build 19624                                                |
| Header<br/>                   | shobjidl.h   |

**Header:** shobjidl.h
