# PBM\_GETBARCOLOR message

Gets the color of the progress bar.

## Parameters

<dl> <dt>

*wParam* 
</dt> <dd>Must be zero.</dd> <dt>

*lParam* 
</dt> <dd>Must be zero.</dd> </dl>

## Return value

Returns the color of the progress bar.

## Remarks

This is the color set by the [**PBM\_SETBARCOLOR**](pbm-setbarcolor.md) message. The default value is CLR\_DEFAULT, which is defined in commctrl.h.

This function only affects the classic mode, not any visual style.

## Requirements



| Requirement | Value |
|-------------------------------------|---------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows Vista \[desktop apps only\]<br/>                                        |
| Minimum supported server<br/> | Windows Server 2008 \[desktop apps only\]<br/>                                  |
| Header<br/>                   | <dl> <dt>Commctrl.h</dt> </dl> |

**Header:** Commctrl.h
