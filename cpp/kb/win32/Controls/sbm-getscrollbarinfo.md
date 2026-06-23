# SBM\_GETSCROLLBARINFO message

Sent by an application to retrieve information about the specified scroll bar.

## Parameters

<dl> <dt>

*wParam* 
</dt> <dd>

Not used; must be zero.

</dd> <dt>

*lParam* 
</dt> <dd>

Pointer to a [**SCROLLBARINFO**](/windows/win32/api/winuser/ns-winuser-scrollbarinfo) structure that receives the information.

</dd> </dl>

## Return value

Returns nonzero if successful or zero otherwise.

To get extended error information, call [**GetLastError**](/windows/desktop/api/errhandlingapi/nf-errhandlingapi-getlasterror).

## Requirements



| Requirement | Value |
|-------------------------------------|----------------------------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows Vista \[desktop apps only\]<br/>                                                           |
| Minimum supported server<br/> | Windows Server 2003 \[desktop apps only\]<br/>                                                     |
| Header<br/>                   | <dl> <dt>Winuser.h (include Windows.h)</dt> </dl> |



## See also

<dl> <dt>

**Reference**
</dt> <dt>

[**GetScrollBarInfo**](/windows/desktop/api/Winuser/nf-winuser-getscrollbarinfo)
</dt> <dt>

[**SCROLLBARINFO**](/windows/win32/api/winuser/ns-winuser-scrollbarinfo)
</dt> </dl>

**Header:** Winuser.h
