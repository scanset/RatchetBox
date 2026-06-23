# RB\_DRAGMOVE message

Updates the drag position in the rebar control after a previous [**RB\_BEGINDRAG**](rb-begindrag.md) message.

## Parameters

<dl> <dt>

*wParam* 
</dt> <dd>

Must be zero.

</dd> <dt>

*lParam* 
</dt> <dd>

**DWORD** value that contains the new mouse coordinates. The horizontal coordinate is contained in the [**LOWORD**](../winmsg/loword.md) and the vertical coordinate is contained in the [**HIWORD**](../winmsg/hiword.md). If you pass (DWORD)-1, the rebar control will use the position of the mouse the last time the control's thread called [**GetMessage**](/windows/desktop/api/winuser/nf-winuser-getmessage) or [**PeekMessage**](/windows/desktop/DevNotes/-peekmessage).

</dd> </dl>

## Return value

The return value for this message is not used.

## Requirements



| Requirement | Value |
|-------------------------------------|---------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows Vista \[desktop apps only\]<br/>                                        |
| Minimum supported server<br/> | Windows Server 2003 \[desktop apps only\]<br/>                                  |
| Header<br/>                   | <dl> <dt>Commctrl.h</dt> </dl> |



## See also

<dl> <dt>

**Reference**
</dt> <dt>

[**RB\_ENDDRAG**](rb-enddrag.md)
</dt> </dl>

**Header:** Commctrl.h
