# WM\_UNINITMENUPOPUP message

Sent when a drop-down menu or submenu has been destroyed.


```C++
#define WM_UNINITMENUPOPUP              0x0125
```



## Parameters

<dl> <dt>

*wParam* 
</dt> <dd>

A handle to the menu

</dd> <dt>

*lParam* 
</dt> <dd>

The high-order word identifies the menu that was destroyed. Currently, this parameter can only be **MF\_SYSMENU** (the window menu).

</dd> </dl>

## Remarks

If an application receives a [**WM\_INITMENUPOPUP**](wm-initmenupopup.md) message, it will receive a **WM\_UNINITMENUPOPUP** message.

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

**Conceptual**
</dt> <dt>

[Menus](menus.md)
</dt> </dl>

**Header:** Winuser.h
