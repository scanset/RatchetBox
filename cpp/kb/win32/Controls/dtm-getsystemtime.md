# DTM\_GETSYSTEMTIME message

Gets the currently selected time from a date and time picker (DTP) control and places it in a specified [**SYSTEMTIME**](/windows/desktop/api/minwinbase/ns-minwinbase-systemtime) structure. You can send this message explicitly or use the [**DateTime\_GetSystemtime**](/windows/desktop/api/Commctrl/nf-commctrl-datetime_getsystemtime) macro.

## Parameters

<dl> <dt>

*wParam* 
</dt> <dd>Must be zero.</dd> <dt>

*lParam* 
</dt> <dd>

A pointer to a [**SYSTEMTIME**](/windows/desktop/api/minwinbase/ns-minwinbase-systemtime) structure. If **DTM\_GETSYSTEMTIME** returns GDT\_VALID, this structure will contain the currently selected time. Otherwise, it will not contain valid information. This parameter must be a valid pointer; it cannot be **NULL**.

</dd> </dl>

## Return value

Returns GDT\_VALID if the time information was successfully placed in *lParam*. Returns GDT\_NONE if the control was set to the [**DTS\_SHOWNONE**](date-and-time-picker-control-styles.md) style and the control check box was not selected. Returns GDT\_ERROR if an error occurs.

## Requirements



| Requirement | Value |
|-------------------------------------|---------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows Vista \[desktop apps only\]<br/>                                        |
| Minimum supported server<br/> | Windows Server 2003 \[desktop apps only\]<br/>                                  |
| Header<br/>                   | <dl> <dt>Commctrl.h</dt> </dl> |

**Header:** Commctrl.h
