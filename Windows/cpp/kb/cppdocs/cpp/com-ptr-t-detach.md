# _com_ptr_t::Detach

**Microsoft Specific**

Extracts and returns the encapsulated interface pointer.

## Syntax

```
Interface* Detach( ) throw( );
```

## Remarks

Extracts and returns the encapsulated interface pointer, and then clears the encapsulated pointer storage to NULL. This removes the interface pointer from encapsulation. It is up to you to call `Release` on the returned interface pointer.

**END Microsoft Specific**

## See also

[_com_ptr_t Class](../cpp/com-ptr-t-class.md)