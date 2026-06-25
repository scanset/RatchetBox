# UDM\_GETRANGE32 message

Retrieves the 32-bit range of an up-down control.

## Parameters

<dl> <dt>

*wParam* 
</dt> <dd>

Pointer to a signed integer that receives the lower limit of the up-down control range. This parameter may be **NULL**.

</dd> <dt>

*lParam* 
</dt> <dd>

Pointer to a signed integer that receives the upper limit of the up-down control range. This parameter may be **NULL**.

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
