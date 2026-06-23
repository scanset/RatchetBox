# LVM\_SETHOTITEM message

Sets the hot item for a list-view control. You can send this message explicitly or use the [**ListView\_SetHotItem**](/windows/desktop/api/Commctrl/nf-commctrl-listview_sethotitem) macro.

## Parameters

<dl> <dt>

*wParam* 
</dt> <dd>

Zero-based index of the item to be set as the hot item.

</dd> <dt>

*lParam* 
</dt> <dd>Must be zero.</dd> </dl>

## Return value

Returns the index of the item that was previously hot.

## Requirements



| Requirement | Value |
|-------------------------------------|---------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows Vista \[desktop apps only\]<br/>                                        |
| Minimum supported server<br/> | Windows Server 2003 \[desktop apps only\]<br/>                                  |
| Header<br/>                   | <dl> <dt>Commctrl.h</dt> </dl> |

**Header:** Commctrl.h
