# WM\_MENUCOMMAND message

Sent when the user invokes a command from a menu. See Remarks.

```cpp
#define WM_MENUCOMMAND                  0x0126
```

## Parameters

<dl> <dt>

*wParam*
</dt> <dd>

The zero-based index of the item selected.

</dd> <dt>

*lParam*
</dt> <dd>

A handle to the menu for the item selected.

</dd> </dl>

## Remarks

In most cases, you will listen for the [**WM\_COMMAND**](wm-command.md) message to respond when a user invokes a command in a menu. The **WM\_MENUCOMMAND** message is sent instead of **WM\_COMMAND** only for menus that are defined with the **MNS\_NOTIFYBYPOS** flag set in the **dwStyle** member of the [**MENUINFO**](/windows/win32/api/winuser/ns-winuser-menuinfo) structure.

The **WM\_MENUCOMMAND** message gives you a handle to the menu so you can access the menu data in the [**MENUINFO**](/windows/win32/api/winuser/ns-winuser-menuinfo) structure and also gives you the index of the selected item, which is typically what applications need. In contrast, the [**WM\_COMMAND**](wm-command.md) message gives you the menu item identifier.

## Requirements

| Requirement | Value |
|-------------------------------------|----------------------------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows 2000 Professional \[desktop apps only\]<br/>                                               |
| Minimum supported server<br/> | Windows 2000 Server \[desktop apps only\]<br/>                                                     |
| Header<br/>                   | <dl> <dt>Winuser.h (include Windows.h)</dt> </dl> |



## See also

<dl> <dt>

[Menus Overview](menus.md)
</dt> </dl>

**Header:** Winuser.h
