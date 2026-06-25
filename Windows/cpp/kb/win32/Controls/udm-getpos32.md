# UDM\_GETPOS32 message

Returns the 32-bit position of an up-down control.

## Parameters

<dl> <dt>

*wParam* 
</dt> <dd>

Must be zero.

</dd> <dt>

*lParam* 
</dt> <dd>

Pointer to a **BOOL** value that is set to zero if the value is successfully retrieved or nonzero if an error occurs. If this parameter is set to **NULL**, errors are not reported.

If **UDM\_GETPOS32** is used in a cross-process situation, this parameter must be **NULL**.

</dd> </dl>

## Return value

Returns the position of an up-down control with 32-bit precision. Applications must check the *lParam* value to determine whether the return value is valid.

## Remarks

When it processes this message, the up-down control updates its current position based on the caption of the buddy window. It returns an error if there is no buddy window or if the caption specifies an invalid or out-of-range value.

## Requirements



| Requirement | Value |
|-------------------------------------|---------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows Vista \[desktop apps only\]<br/>                                        |
| Minimum supported server<br/> | Windows Server 2003 \[desktop apps only\]<br/>                                  |
| Header<br/>                   | <dl> <dt>Commctrl.h</dt> </dl> |



## See also

<dl> <dt>

**Reference**
</dt> <dt>

[**UDM\_GETPOS**](udm-getpos.md)
</dt> <dt>

[**UDM\_SETPOS**](udm-setpos.md)
</dt> <dt>

[**UDM\_SETPOS32**](udm-setpos32.md)
</dt> </dl>

**Header:** Commctrl.h
