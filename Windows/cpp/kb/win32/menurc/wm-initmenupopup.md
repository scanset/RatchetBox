# WM\_INITMENUPOPUP message

Sent when a drop-down menu or submenu is about to become active. This allows an application to modify the menu before it is displayed, without changing the entire menu.


```C++
#define WM_INITMENUPOPUP                0x0117
```



## Parameters

<dl> <dt>

*wParam* 
</dt> <dd>

A handle to the drop-down menu or submenu.

</dd> <dt>

*lParam* 
</dt> <dd>

The low-order word specifies the zero-based relative position of the menu item that opens the drop-down menu or submenu.

The high-order word indicates whether the drop-down menu is the window menu. If the menu is the window menu, this parameter is **TRUE**; otherwise, it is **FALSE**.

</dd> </dl>

## Return value

If an application processes this message, it should return zero.

## Requirements



| Requirement | Value |
|-------------------------------------|----------------------------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows 2000 Professional \[desktop apps only\]<br/>                                               |
| Minimum supported server<br/> | Windows 2000 Server \[desktop apps only\]<br/>                                                     |
| Header<br/>                   | <dl> <dt>Winuser.h (include Windows.h)</dt> </dl> |



## See also

<dl> <dt>

**Reference**
</dt> <dt>

[**HIWORD**](../winmsg/hiword.md)
</dt> <dt>

[**LOWORD**](../winmsg/loword.md)
</dt> <dt>

[**WM\_INITMENU**](wm-initmenu.md)
</dt> <dt>

**Conceptual**
</dt> <dt>

[Keyboard Accelerators](keyboard-accelerators.md)
</dt> </dl>

**Header:** Winuser.h
