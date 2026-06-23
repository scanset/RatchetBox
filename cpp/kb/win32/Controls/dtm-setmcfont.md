# DTM\_SETMCFONT message

Sets the font to be used by the date and time picker (DTP) control's child month calendar control. You can send this message explicitly or use the [**DateTime\_SetMonthCalFont**](/windows/desktop/api/Commctrl/nf-commctrl-datetime_setmonthcalfont) macro.

## Parameters

<dl> <dt>

*wParam* 
</dt> <dd>

A handle to the font that will be set.

</dd> <dt>

*lParam* 
</dt> <dd>

Specifies whether the control should be redrawn immediately upon setting the font. Setting this parameter to **TRUE** causes the control to redraw itself.

</dd> </dl>

## Return value

The return value for this message is not used.

## Requirements



| Requirement | Value |
|-------------------------------------|---------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows Vista \[desktop apps only\]<br/>                                        |
| Minimum supported server<br/> | Windows Server 2003 \[desktop apps only\]<br/>                                  |
| Header<br/>                   | <dl> <dt>Commctrl.h</dt> </dl> |

**Header:** Commctrl.h
