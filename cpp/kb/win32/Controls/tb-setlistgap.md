# TB\_SETLISTGAP message

Sets the distance between the toolbar buttons on a specific toolbar.

## Parameters

<dl> <dt>

*wParam* 
</dt> <dd>

The gap, in pixels, between buttons on the toolbar.

</dd> <dt>

*lParam* 
</dt> <dd>

Ignored.

</dd> </dl>

## Return value

No return value.

## Remarks

The gap between buttons only applies to the toolbar control window that receives this message. Receipt of this message triggers a repaint of the toolbar, if the toolbar is currently visible.

## Requirements



| Requirement | Value |
|-------------------------------------|---------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows Vista \[desktop apps only\]<br/>                                        |
| Minimum supported server<br/> | Windows Server 2008 \[desktop apps only\]<br/>                                  |
| Header<br/>                   | <dl> <dt>Commctrl.h</dt> </dl> |

**Header:** Commctrl.h
