# LVM\_GETTOOLTIPS message

Retrieves the tooltip control that the list-view control uses to display tooltips. You can send this message explicitly or use the [**ListView\_GetToolTips**](/windows/desktop/api/Commctrl/nf-commctrl-listview_gettooltips) macro.

## Parameters

<dl> <dt>

*wParam* 
</dt> <dd>Must be zero.</dd> <dt>

*lParam* 
</dt> <dd>Must be zero.</dd> </dl>

## Return value

Returns the handle of the tooltip control.

## Requirements



| Requirement | Value |
|-------------------------------------|---------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows Vista \[desktop apps only\]<br/>                                        |
| Minimum supported server<br/> | Windows Server 2003 \[desktop apps only\]<br/>                                  |
| Header<br/>                   | <dl> <dt>Commctrl.h</dt> </dl> |



## See also

<dl> <dt>

[**LVM\_SETTOOLTIPS**](lvm-settooltips.md)
</dt> </dl>

**Header:** Commctrl.h
