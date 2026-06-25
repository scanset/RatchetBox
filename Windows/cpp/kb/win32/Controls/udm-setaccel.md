# UDM\_SETACCEL message

Sets the acceleration for an up-down control.

## Parameters

<dl> <dt>

*wParam* 
</dt> <dd>

Number of [**UDACCEL**](/windows/desktop/api/Commctrl/ns-commctrl-udaccel) structures specified by *aAccels*.

</dd> <dt>

*lParam* 
</dt> <dd>

Pointer to an array of [**UDACCEL**](/windows/desktop/api/Commctrl/ns-commctrl-udaccel) structures that contain acceleration information. Elements should be sorted in ascending order based on the **nSec** member.

</dd> </dl>

## Return value

Returns **TRUE** if successful, or **FALSE** otherwise.

## Requirements



| Requirement | Value |
|-------------------------------------|---------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows Vista \[desktop apps only\]<br/>                                        |
| Minimum supported server<br/> | Windows Server 2003 \[desktop apps only\]<br/>                                  |
| Header<br/>                   | <dl> <dt>Commctrl.h</dt> </dl> |



## See also

<dl> <dt>

[**UDM\_GETACCEL**](udm-getaccel.md)
</dt> </dl>

**Header:** Commctrl.h
