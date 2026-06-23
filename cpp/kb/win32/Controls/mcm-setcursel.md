# MCM\_SETCURSEL message

Sets the currently selected date for a month calendar control. If the specified date is not in view, the control updates the display to bring it into view. You can send this message explicitly or by using the [**MonthCal\_SetCurSel**](/windows/desktop/api/Commctrl/nf-commctrl-monthcal_setcursel) macro.

## Parameters

<dl> <dt>

*wParam* 
</dt> <dd>Must be zero.</dd> <dt>

*lParam* 
</dt> <dd>

Pointer to a [**SYSTEMTIME**](/windows/desktop/api/minwinbase/ns-minwinbase-systemtime) structure that contains the date to be set as the current selection.

</dd> </dl>

## Return value

Returns nonzero if successful, or zero otherwise. This message will fail if applied to a month calendar control that uses the [**MCS\_MULTISELECT**](month-calendar-control-styles.md) style.

## Requirements



| Requirement | Value |
|-------------------------------------|---------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows Vista \[desktop apps only\]<br/>                                        |
| Minimum supported server<br/> | Windows Server 2003 \[desktop apps only\]<br/>                                  |
| Header<br/>                   | <dl> <dt>Commctrl.h</dt> </dl> |



## See also

<dl> <dt>

[Times in the Month Calendar Control](month-calendar-controls.md)
</dt> </dl>

**Header:** Commctrl.h
