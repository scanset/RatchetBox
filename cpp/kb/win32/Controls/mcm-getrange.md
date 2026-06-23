# MCM\_GETRANGE message

Retrieves the minimum and maximum allowable dates set for a month calendar control. You can send this message explicitly or by using the [**MonthCal\_GetRange**](/windows/desktop/api/Commctrl/nf-commctrl-monthcal_getrange) macro.

## Parameters

<dl> <dt>

*wParam* 
</dt> <dd>Must be zero.</dd> <dt>

*lParam* 
</dt> <dd>

Pointer to a two-element array of [**SYSTEMTIME**](/windows/desktop/api/minwinbase/ns-minwinbase-systemtime) structures that will receive the date limit information. The minimum limit is set in *lprgSysTimeArray*\[0\], and *lprgSysTimeArray*\[1\] receives the maximum limit. If either element is set to all zeros, then no corresponding limit is set for the month calendar control. This parameter must be a valid address and cannot be **NULL**.

</dd> </dl>

## Return value

Returns a **DWORD** that can be zero (no limits are set) or a combination of the following values that specify limit information:



| Return code                                                                              | Description                                                                                                                        |
|------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------------------|
| <dl> <dt>**GDTR\_MAX**</dt> </dl> | A maximum limit is set for the control; *lprgSysTimeArray*\[0\] is valid and contains the applicable date information. <br/> |
| <dl> <dt>**GDTR\_MIN**</dt> </dl> | A minimum limit is set for the control; *lprgSysTimeArray*\[1\] is valid and contains the applicable date information. <br/> |



 

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
