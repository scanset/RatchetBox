# PBM\_DELTAPOS message

Advances the current position of a progress bar by a specified increment and redraws the bar to reflect the new position.

## Parameters

<dl> <dt>

*wParam* 
</dt> <dd>

Amount to advance the position.

</dd> <dt>

*lParam* 
</dt> <dd>Must be zero.</dd> </dl>

## Return value

Returns the previous position.

## Remarks

If the increment results in a value outside the range of the control, the position is set to the nearest boundary.

The behavior of this message is undefined if it is sent to a control that has the [**PBS\_MARQUEE**](progress-bar-control-styles.md) style.

## Requirements



| Requirement | Value |
|-------------------------------------|---------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows Vista \[desktop apps only\]<br/>                                        |
| Minimum supported server<br/> | Windows Server 2003 \[desktop apps only\]<br/>                                  |
| Header<br/>                   | <dl> <dt>Commctrl.h</dt> </dl> |

**Header:** Commctrl.h
