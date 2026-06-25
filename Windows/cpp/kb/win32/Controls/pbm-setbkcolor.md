# PBM\_SETBKCOLOR message

Sets the background color in the progress bar.

## Parameters

<dl> <dt>

*wParam* 
</dt> <dd>

Must be zero.

</dd> <dt>

*lParam* 
</dt> <dd>

**COLORREF** value that specifies the new background color. Specify the CLR\_DEFAULT value to cause the progress bar to use its default background color.

</dd> </dl>

## Return value

Returns the previous background color, or CLR\_DEFAULT if the background color is the default color.

## Remarks

When visual styles are enabled, this message has no effect.

## Requirements



| Requirement | Value |
|-------------------------------------|---------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows Vista \[desktop apps only\]<br/>                                        |
| Minimum supported server<br/> | Windows Server 2003 \[desktop apps only\]<br/>                                  |
| Header<br/>                   | <dl> <dt>Commctrl.h</dt> </dl> |

**Header:** Commctrl.h
