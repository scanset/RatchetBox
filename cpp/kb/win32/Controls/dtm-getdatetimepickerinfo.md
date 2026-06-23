# DTM\_GETDATETIMEPICKERINFO message

Gets information on a date and time picker (DTP) control.

## Parameters

<dl> <dt>

*wParam* 
</dt> <dd>

Must be zero.

</dd> <dt>

*lParam* \[in\]
</dt> <dd> A pointer to <a href="/windows/win32/api/commctrl/ns-commctrl-datetimepickerinfo">**DATETIMEPICKERINFO**</a> to receive the information. The caller is responsible for allocating the memory for this structure. Set the **cbSize** member of the structure to sizeof(DATETIMEPICKERINFO) before sending this message.</dd> </dl>

## Return value

Return value is ignored.

## Requirements



| Requirement | Value |
|-------------------------------------|---------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows Vista \[desktop apps only\]<br/>                                        |
| Minimum supported server<br/> | Windows Server 2008 \[desktop apps only\]<br/>                                  |
| Header<br/>                   | <dl> <dt>Commctrl.h</dt> </dl> |

**Header:** Commctrl.h
