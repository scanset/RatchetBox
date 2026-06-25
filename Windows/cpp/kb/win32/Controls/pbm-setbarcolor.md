# PBM\_SETBARCOLOR message

Sets the color of the progress indicator bar in the progress bar control.

## Parameters

<dl> <dt>

*wParam* 
</dt> <dd>

Must be zero.

</dd> <dt>

*lParam* 
</dt> <dd>

The **COLORREF** value that specifies the new progress indicator bar color. Specifying the CLR\_DEFAULT value causes the progress bar to use its default progress indicator bar color.

</dd> </dl>

## Return value

Returns the previous progress indicator bar color, or CLR\_DEFAULT if the progress indicator bar color is the default color.

## Remarks

When visual styles are enabled, this message has no effect.

## Requirements



| Requirement | Value |
|-------------------------------------|---------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows Vista \[desktop apps only\]<br/>                                        |
| Minimum supported server<br/> | Windows Server 2003 \[desktop apps only\]<br/>                                  |
| Header<br/>                   | <dl> <dt>Commctrl.h</dt> </dl> |

**Header:** Commctrl.h
