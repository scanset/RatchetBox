# LVM\_ISITEMVISIBLE message

Indicates if an item in the list-view control is visible. Send this message explicitly or by using the [**ListView\_IsItemVisible**](/windows/desktop/api/Commctrl/nf-commctrl-listview_isitemvisible) macro.

## Parameters

<dl> <dt>

*wParam* \[in\]
</dt> <dd>

An index of the item in the list-view control.

</dd> <dt>

*lParam* 
</dt> <dd>Must be zero.</dd> </dl>

## Return value

Returns **TRUE** if visible, or **FALSE** otherwise.

## Requirements



| Requirement | Value |
|-------------------------------------|---------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows Vista \[desktop apps only\]<br/>                                        |
| Minimum supported server<br/> | Windows Server 2003 \[desktop apps only\]<br/>                                  |
| Header<br/>                   | <dl> <dt>Commctrl.h</dt> </dl> |

**Header:** Commctrl.h
