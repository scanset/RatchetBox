# TB\_SETDRAWTEXTFLAGS message

Sets the text drawing flags for the toolbar.

## Parameters

<dl> <dt>

*wParam* 
</dt> <dd>

One or more of the DT\_ flags, specified in [**DrawText**](/windows/desktop/api/winuser/nf-winuser-drawtext), that indicate which bits in *lParam* will be used when drawing the text.

</dd> <dt>

*lParam* 
</dt> <dd>

One or more of the DT\_ flags, specified in [**DrawText**](/windows/desktop/api/winuser/nf-winuser-drawtext), that indicate how the button text will be drawn. This value will be passed to the **DrawText** function when the button text is drawn.

</dd> </dl>

## Return value

Returns the previous text drawing flags.

## Remarks

The *wParam* parameter allows you to specify which flags will be used when drawing the text, even if these flags are turned off. For example, if you do not want the DT\_CENTER flag used when drawing text, you would add the DT\_CENTER flag to *wParam* and not specify the DT\_CENTER flag in *lParam*. This prevents the control from passing the DT\_CENTER flag to the [**DrawText**](/windows/desktop/api/winuser/nf-winuser-drawtext) function.

## Requirements



| Requirement | Value |
|-------------------------------------|---------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows Vista \[desktop apps only\]<br/>                                        |
| Minimum supported server<br/> | Windows Server 2003 \[desktop apps only\]<br/>                                  |
| Header<br/>                   | <dl> <dt>Commctrl.h</dt> </dl> |

**Header:** Commctrl.h
