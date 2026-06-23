# RB\_BEGINDRAG message

Puts the rebar control in drag-and-drop mode. This message does not cause a [RBN\_BEGINDRAG](rbn-begindrag.md) notification to be sent.

## Parameters

<dl> <dt>

*wParam* 
</dt> <dd>

Zero-based index of the band that the drag-and-drop operation will affect.

</dd> <dt>

*lParam* 
</dt> <dd>

**DWORD** value that contains the starting mouse coordinates. The horizontal coordinate is contained in the LOWORD and the vertical coordinate is contained in the HIWORD. If you pass (**DWORD**)-1, the rebar control will use the position of the mouse the last time the control's thread called [**GetMessage**](/windows/desktop/api/winuser/nf-winuser-getmessage) or [**PeekMessage**](/windows/desktop/api/winuser/nf-winuser-peekmessagea).

</dd> </dl>

## Return value

The return value for this message is not used.

## Remarks

The **RB\_BEGINDRAG**, [**RB\_DRAGMOVE**](rb-dragmove.md), and [**RB\_ENDDRAG**](rb-enddrag.md) messages allow you to implement an [**IDropTarget**](/windows/desktop/api/oleidl/nn-oleidl-idroptarget) interface for a rebar control. You send the **RB\_BEGINDRAG** message in response to [**IDropTarget::DragEnter**](/windows/desktop/api/oleidl/nf-oleidl-idroptarget-dragenter), send the **RB\_DRAGMOVE** message in response to [**IDropTarget::DragOver**](/windows/desktop/api/oleidl/nf-oleidl-idroptarget-dragover), and the **RB\_ENDDRAG** message in response to [**IDropTarget::Drop**](/windows/desktop/api/oleidl/nf-oleidl-idroptarget-drop) and [**IDropTarget::DragLeave**](/windows/desktop/api/oleidl/nf-oleidl-idroptarget-dragleave).

## Requirements



| Requirement | Value |
|-------------------------------------|---------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows Vista \[desktop apps only\]<br/>                                        |
| Minimum supported server<br/> | Windows Server 2003 \[desktop apps only\]<br/>                                  |
| Header<br/>                   | <dl> <dt>Commctrl.h</dt> </dl> |

**Header:** Commctrl.h
