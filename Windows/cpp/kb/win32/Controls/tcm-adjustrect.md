# TCM\_ADJUSTRECT message

Calculates a tab control's display area given a window rectangle, or calculates the window rectangle that would correspond to a specified display area. You can send this message explicitly or by using the [**TabCtrl\_AdjustRect**](/windows/desktop/api/Commctrl/nf-commctrl-tabctrl_adjustrect) macro.

## Parameters

<dl> <dt>

*wParam* 
</dt> <dd>

Operation to perform. If this parameter is **TRUE**, *lParam* specifies a display rectangle and receives the corresponding window rectangle. If this parameter is **FALSE**, *lParam* specifies a window rectangle and receives the corresponding display area.

</dd> <dt>

*lParam* 
</dt> <dd>

Pointer to a [**RECT**](/windows/win32/api/windef/ns-windef-rect) structure that specifies the given rectangle and receives the calculated rectangle.

</dd> </dl>

## Return value

No return value.

## Remarks

This message applies only to tab controls that are at the top. It does not apply to tab controls that are on the sides or bottom.

## Requirements



| Requirement | Value |
|-------------------------------------|---------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows Vista \[desktop apps only\]<br/>                                        |
| Minimum supported server<br/> | Windows Server 2003 \[desktop apps only\]<br/>                                  |
| Header<br/>                   | <dl> <dt>Commctrl.h</dt> </dl> |

**Header:** Commctrl.h
