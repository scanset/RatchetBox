# UDM\_GETACCEL message

Retrieves acceleration information for an up-down control.

## Parameters

<dl> <dt>

*wParam* 
</dt> <dd>

Number of elements in the array specified by *lParam*.

</dd> <dt>

*lParam* 
</dt> <dd>

Pointer to an array of [**UDACCEL**](/windows/desktop/api/Commctrl/ns-commctrl-udaccel) structures that receive acceleration information.

</dd> </dl>

## Return value

The return value is the number of accelerators currently set for the control.

## Requirements



| Requirement | Value |
|-------------------------------------|---------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows Vista \[desktop apps only\]<br/>                                        |
| Minimum supported server<br/> | Windows Server 2003 \[desktop apps only\]<br/>                                  |
| Header<br/>                   | <dl> <dt>Commctrl.h</dt> </dl> |



## See also

<dl> <dt>

[**UDM\_SETACCEL**](udm-setaccel.md)
</dt> </dl>

**Header:** Commctrl.h
