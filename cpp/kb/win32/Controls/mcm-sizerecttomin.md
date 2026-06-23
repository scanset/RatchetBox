# MCM\_SIZERECTTOMIN message

Calculates how many calendars will fit in the given rectangle, and then returns the minimum size that a rectangle needs to be to fit that number of calendars. You can send this message explicitly or by using the [**MonthCal\_SizeRectToMin**](/windows/desktop/api/Commctrl/nf-commctrl-monthcal_sizerecttomin) macro.

## Parameters

<dl> <dt>

*wParam* 
</dt> <dd>

Must be zero.

</dd> <dt>

*lParam* 
</dt> <dd>

On entry, contains a pointer to a [**RECT**](/windows/win32/api/windef/ns-windef-rect) structure that describes a region that is greater than or equal to the size necessary to fit the desired number of calendars. When this function returns, contains the minimum **RECT** structure that fits this number of calendars.

</dd> </dl>

## Return value

Unused.

## Requirements



| Requirement | Value |
|-------------------------------------|---------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows Vista \[desktop apps only\]<br/>                                        |
| Minimum supported server<br/> | Windows Server 2008 \[desktop apps only\]<br/>                                  |
| Header<br/>                   | <dl> <dt>Commctrl.h</dt> </dl> |

**Header:** Commctrl.h
