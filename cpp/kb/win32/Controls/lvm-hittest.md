# LVM\_HITTEST message

Determines which list-view item, if any, is at a specified position. You can send this message explicitly or by using the [**ListView\_HitTest**](/windows/desktop/api/Commctrl/nf-commctrl-listview_hittest) macro.

## Parameters

<dl> <dt>

*wParam* 
</dt> <dd>Must be 0. <b>Windows Vista.</b> Should be -1 if the <b>iGroup</b> and <b>iSubItem</b> members of the <i>lParam</i> structure are to be retrieved.</dd> <dt>

*lParam* 
</dt> <dd>

Pointer to an [**LVHITTESTINFO**](/windows/win32/api/commctrl/ns-commctrl-lvhittestinfo) structure that contains the position to hit test and receives information about the results of the hit test.

</dd> </dl>

## Return value

Returns the index of the item at the specified position, if any, or -1 otherwise.

## Requirements



| Requirement | Value |
|-------------------------------------|---------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows Vista \[desktop apps only\]<br/>                                        |
| Minimum supported server<br/> | Windows Server 2003 \[desktop apps only\]<br/>                                  |
| Header<br/>                   | <dl> <dt>Commctrl.h</dt> </dl> |

**Header:** Commctrl.h
