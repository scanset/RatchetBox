# WM\_MDIREFRESHMENU message

An application sends the **WM\_MDIREFRESHMENU** message to a multiple-document interface (MDI) client window to refresh the window menu of the MDI frame window.


```C++
#define WM_MDIREFRESHMENU               0x0234
```



## Parameters

<dl> <dt>

*wParam* 
</dt> <dd>

This parameter is not used and must be zero.

</dd> <dt>

*lParam* 
</dt> <dd>

This parameter is not used and must be zero.

</dd> </dl>

## Return value

Type: **HMENU**

If the message succeeds, the return value is the handle to the frame window menu.

If the message fails, the return value is **NULL**.

## Remarks

After sending this message, an application must call the [**DrawMenuBar**](/windows/win32/api/winuser/nf-winuser-drawmenubar) function to update the menu bar.

## Requirements



| Requirement | Value |
|-------------------------------------|----------------------------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows 2000 Professional \[desktop apps only\]<br/>                                               |
| Minimum supported server<br/> | Windows 2000 Server \[desktop apps only\]<br/>                                                     |
| Header<br/>                   | <dl> <dt>Winuser.h (include Windows.h)</dt> </dl> |



## See also

<dl> <dt>

**Reference**
</dt> <dt>

[**DrawMenuBar**](/windows/win32/api/winuser/nf-winuser-drawmenubar)
</dt> <dt>

[**WM\_MDISETMENU**](wm-mdisetmenu.md)
</dt> <dt>

**Conceptual**
</dt> <dt>

[Multiple Document Interface](multiple-document-interface.md)
</dt> </dl>

 

 