# PGM\_FORWARDMOUSE message

Enables or disables mouse forwarding for the pager control. When mouse forwarding is enabled, the pager control forwards [**WM\_MOUSEMOVE**](/windows/desktop/inputdev/wm-mousemove) messages to the contained window. You can send this message explicitly or use the [**Pager\_ForwardMouse**](/windows/desktop/api/Commctrl/nf-commctrl-pager_forwardmouse) macro.

## Parameters

<dl> <dt>

*wParam* 
</dt> <dd>

**BOOL** value that determines if mouse forwarding is enabled or disabled. If this value is nonzero, mouse forwarding is enabled. If this value is zero, mouse forwarding is disabled.

</dd> <dt>

*lParam* 
</dt> <dd>Must be zero.</dd> </dl>

## Return value

The return value is not used.

## Requirements



| Requirement | Value |
|-------------------------------------|---------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows Vista \[desktop apps only\]<br/>                                        |
| Minimum supported server<br/> | Windows Server 2003 \[desktop apps only\]<br/>                                  |
| Header<br/>                   | <dl> <dt>Commctrl.h</dt> </dl> |

**Header:** Commctrl.h
