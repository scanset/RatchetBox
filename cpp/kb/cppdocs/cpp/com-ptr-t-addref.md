# _com_ptr_t::AddRef

**Microsoft Specific**

Calls the `AddRef` member function of `IUnknown` on the encapsulated interface pointer.

## Syntax

```cpp
void AddRef( );
```

## Remarks

Calls `IUnknown::AddRef` on the encapsulated interface pointer, raising an `E_POINTER` error if the pointer is NULL.

**END Microsoft Specific**

## See also

[_com_ptr_t Class](../cpp/com-ptr-t-class.md)