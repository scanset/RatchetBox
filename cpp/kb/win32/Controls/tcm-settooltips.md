# TCM\_SETTOOLTIPS message

Assigns a tooltip control to a tab control. You can send this message explicitly or by using the [**TabCtrl\_SetToolTips**](/windows/desktop/api/Commctrl/nf-commctrl-tabctrl_settooltips) macro.

## Parameters

<dl> <dt>

*wParam* 
</dt> <dd>

Handle to the tooltip control.

</dd> <dt>

*lParam* 
</dt> <dd>Must be zero.</dd> </dl>

## Return value

No return value.

## Remarks

You can retrieve the tooltip control associated with a tab control by using the [**TCM\_GETTOOLTIPS**](tcm-gettooltips.md) message.

## Requirements



| Requirement | Value |
|-------------------------------------|---------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows Vista \[desktop apps only\]<br/>                                        |
| Minimum supported server<br/> | Windows Server 2003 \[desktop apps only\]<br/>                                  |
| Header<br/>                   | <dl> <dt>Commctrl.h</dt> </dl> |

**Header:** Commctrl.h
