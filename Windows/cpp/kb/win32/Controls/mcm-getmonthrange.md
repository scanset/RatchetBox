# MCM\_GETMONTHRANGE message

Retrieves date information (using [**SYSTEMTIME**](/windows/desktop/api/minwinbase/ns-minwinbase-systemtime) structures) that represents the high and low limits of a month calendar control's display. You can send this message explicitly or by using the [**MonthCal\_GetMonthRange**](/windows/desktop/api/Commctrl/nf-commctrl-monthcal_getmonthrange) macro.

## Parameters

<dl> <dt>

*wParam* 
</dt> <dd>

Value specifying the scope of the range limits to be retrieved. This value must be one of the following:



| Value                                                                                                                                                      | Meaning                                                                                               |
|------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------|
| <span id="GMR_DAYSTATE"></span><span id="gmr_daystate"></span><dl> <dt>**GMR\_DAYSTATE**</dt> </dl> | Include preceding and trailing months of visible range that are only partially displayed. <br/> |
| <span id="GMR_VISIBLE"></span><span id="gmr_visible"></span><dl> <dt>**GMR\_VISIBLE**</dt> </dl>    | Include only those months that are entirely displayed. <br/>                                    |



 

</dd> <dt>

*lParam* 
</dt> <dd>

Pointer to a two-element array of [**SYSTEMTIME**](/windows/desktop/api/minwinbase/ns-minwinbase-systemtime) structures that will receive the lower and upper limits of the scope specified by *wParam*. The lower and upper limits are placed in *lprgSysTimeArray*\[0\] and *lprgSysTimeArray*\[1\], respectively. This parameter must be a valid address and cannot be **NULL**.

</dd> </dl>

## Return value

Returns an INT value that represents the range, in months, spanned by the two limits returned at *lParam*.

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
