# LVM\_GETFOOTERITEMRECT message

Gets the coordinates of a footer for a specified item in a list-view control. Send this message explicitly or by using the [**ListView\_GetFooterItemRect**](/windows/desktop/api/Commctrl/nf-commctrl-listview_getfooteritemrect) macro.

## Parameters

<dl> <dt>

*wParam* \[in\]
</dt> <dd>

The index of the item in the list-view control.

</dd> <dt>

*lParam* \[in, out\]
</dt> <dd>

A pointer to a [**RECT**](/windows/win32/api/windef/ns-windef-rect) structure to receive the coordinates. The calling application is responsible for allocating this structure. The coordinates received are expressed as client coordinates.

</dd> </dl>

## Return value

Returns **TRUE** if successful, or **FALSE** otherwise.

## Requirements



| Requirement | Value |
|-------------------------------------|---------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows Vista \[desktop apps only\]<br/>                                        |
| Minimum supported server<br/> | Windows Server 2008 \[desktop apps only\]<br/>                                  |
| Header<br/>                   | <dl> <dt>Commctrl.h</dt> </dl> |

**Header:** Commctrl.h
