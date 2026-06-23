# IPM\_SETFOCUS message

Sets the keyboard focus to the specified field in the IP address control. All of the text in that field will be selected.

## Parameters

<dl> <dt>

*wParam* 
</dt> <dd>

A zero-based field index to which the focus should be set. If this value is greater than the number of fields, focus is set to the first blank field. If all fields are nonblank, focus is set to the first field.

</dd> <dt>

*lParam* 
</dt> <dd>Must be zero.</dd> </dl>

## Return value

The return value is not used.

## Requirements



| Requirement | Value |
|-------------------------------------|---------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows Vista \[desktop apps only\]<br/>                                        |
| Minimum supported server<br/> | Windows Server 2003 \[desktop apps only\]<br/>                                  |
| Header<br/>                   | <dl> <dt>Commctrl.h</dt> </dl> |

**Header:** Commctrl.h
