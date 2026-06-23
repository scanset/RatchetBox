# RB\_SETPARENT message

Sets a rebar control's parent window.

## Parameters

<dl> <dt>

*wParam* 
</dt> <dd>

Handle to the parent window to be set.

</dd> <dt>

*lParam* 
</dt> <dd>Must be zero.</dd> </dl>

## Return value

Returns the handle to the previous parent window, or **NULL** if there is no previous parent.

## Remarks

The rebar control sends notification messages to the window you specify with this message. This message does not actually change the parent of the rebar control.

## Requirements



| Requirement | Value |
|-------------------------------------|---------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows Vista \[desktop apps only\]<br/>                                        |
| Minimum supported server<br/> | Windows Server 2003 \[desktop apps only\]<br/>                                  |
| Header<br/>                   | <dl> <dt>Commctrl.h</dt> </dl> |

**Header:** Commctrl.h
