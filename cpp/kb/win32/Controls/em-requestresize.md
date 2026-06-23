# EM\_REQUESTRESIZE message

Forces a rich edit control to send an [**EN\_REQUESTRESIZE**](en-requestresize.md) notification code to its parent window.

## Parameters

<dl> <dt>

*wParam* 
</dt> <dd>

Not used; must be zero.

</dd> <dt>

*lParam* 
</dt> <dd>

Not used; must be zero.

</dd> </dl>

## Return value

This message does not return a value.

## Remarks

This message is useful during [**WM\_SIZE**](/windows/desktop/winmsg/wm-size) processing for the parent of a bottomless rich edit control.

## Requirements



| Requirement | Value |
|-------------------------------------|---------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows Vista \[desktop apps only\]<br/>                                        |
| Minimum supported server<br/> | Windows Server 2003 \[desktop apps only\]<br/>                                  |
| Header<br/>                   | <dl> <dt>Richedit.h</dt> </dl> |



## See also

<dl> <dt>

**Reference**
</dt> <dt>

[**EN\_REQUESTRESIZE**](en-requestresize.md)
</dt> <dt>

**Other Resources**
</dt> <dt>

[**WM\_SIZE**](/windows/desktop/winmsg/wm-size)
</dt> </dl>

**Header:** Richedit.h
