# IPM\_SETRANGE message

Sets the valid range for the specified field in the IP address control.

## Parameters

<dl> <dt>

*wParam* 
</dt> <dd>

A zero-based field index to which the range will be applied.

</dd> <dt>

*lParam* 
</dt> <dd>

A **WORD** value that contains the lower limit of the range in the low-order byte and the upper limit in the high-order byte. Both of these values are inclusive. The [**MAKEIPRANGE**](/windows/desktop/api/Commctrl/nf-commctrl-makeiprange) macro can also be used to create the range.

</dd> </dl>

## Return value

Returns nonzero if successful, or zero otherwise.

## Remarks

If the user enters a value in the field that is outside of this range, the control will send the [IPN\_FIELDCHANGED](ipn-fieldchanged.md) notification with the entered value. If the value is still outside of the range after sending the notification, the control will attempt to change the entered value to the closest range limit.

## Requirements



| Requirement | Value |
|-------------------------------------|---------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows Vista \[desktop apps only\]<br/>                                        |
| Minimum supported server<br/> | Windows Server 2003 \[desktop apps only\]<br/>                                  |
| Header<br/>                   | <dl> <dt>Commctrl.h</dt> </dl> |

**Header:** Commctrl.h
