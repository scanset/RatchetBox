# MCM\_SETCALENDARBORDER message

Sets the size of the border, in pixels. You can send this message explicitly or by using the [**MonthCal\_SetCalendarBorder**](/windows/desktop/api/Commctrl/nf-commctrl-monthcal_setcalendarborder) macro.

## Parameters

<dl> <dt>

*wParam* 
</dt> <dd>

If **TRUE**, then the border size is set to the number of pixels that *lParam* specifies. If **FALSE**, then the border size is reset to the default value specified by the theme, or zero if themes are not being used.

</dd> <dt>

*lParam* 
</dt> <dd>

Number of pixels of the border size.

</dd> </dl>

## Return value

Not used.

## Requirements



| Requirement | Value |
|-------------------------------------|---------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows Vista \[desktop apps only\]<br/>                                        |
| Minimum supported server<br/> | Windows Server 2008 \[desktop apps only\]<br/>                                  |
| Header<br/>                   | <dl> <dt>Commctrl.h</dt> </dl> |

**Header:** Commctrl.h
