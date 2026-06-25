# LVM\_SETITEMPOSITION32 message

Moves an item to a specified position in a list-view control (must be in icon or small icon view). This message differs from the [**LVM\_SETITEMPOSITION**](lvm-setitemposition.md) message in that it uses 32-bit coordinates. You can send this message explicitly or by using the [**ListView\_SetItemPosition32**](/windows/desktop/api/Commctrl/nf-commctrl-listview_setitemposition32) macro.

## Parameters

<dl> <dt>

*wParam* 
</dt> <dd>

Index of the list-view item for which to set the position.

</dd> <dt>

*lParam* 
</dt> <dd>

Pointer to a [**POINT**](/windows/win32/api/windef/ns-windef-point) structure that contains the new position of the item, in list-view coordinates.

</dd> </dl>

## Return value

No return value.

## Requirements



| Requirement | Value |
|-------------------------------------|---------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows Vista \[desktop apps only\]<br/>                                        |
| Minimum supported server<br/> | Windows Server 2003 \[desktop apps only\]<br/>                                  |
| Header<br/>                   | <dl> <dt>Commctrl.h</dt> </dl> |

**Header:** Commctrl.h
