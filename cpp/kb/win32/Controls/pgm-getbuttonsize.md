# PGM\_GETBUTTONSIZE message

Retrieves the current button size for the pager control. You can send this message explicitly or use the [**Pager\_GetButtonSize**](/windows/desktop/api/Commctrl/nf-commctrl-pager_getbuttonsize) macro.

## Parameters

<dl> <dt>

*wParam* 
</dt> <dd>Must be zero.</dd> <dt>

*lParam* 
</dt> <dd>Must be zero.</dd> </dl>

## Return value

Returns an INT value that contains the current button size, in pixels.

## Requirements



| Requirement | Value |
|-------------------------------------|---------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows Vista \[desktop apps only\]<br/>                                        |
| Minimum supported server<br/> | Windows Server 2003 \[desktop apps only\]<br/>                                  |
| Header<br/>                   | <dl> <dt>Commctrl.h</dt> </dl> |



## See also

<dl> <dt>

[**PGM\_SETBUTTONSIZE**](pgm-setbuttonsize.md)
</dt> </dl>

**Header:** Commctrl.h
