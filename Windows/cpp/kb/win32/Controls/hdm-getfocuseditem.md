# HDM\_GETFOCUSEDITEM message

Gets the item in a header control that has the focus. Send this message explicitly or by using the [**Header\_GetFocusedItem**](/windows/desktop/api/Commctrl/nf-commctrl-header_getfocuseditem) macro.

## Parameters

<dl> <dt>

*wParam* 
</dt> <dd>Not used. Must be zero.</dd> <dt>

*lParam* 
</dt> <dd>Not used. Must be zero.</dd> </dl>

## Return value

Returns the index of the item in focus.

## Requirements



| Requirement | Value |
|-------------------------------------|---------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows Vista \[desktop apps only\]<br/>                                        |
| Minimum supported server<br/> | Windows Server 2008 \[desktop apps only\]<br/>                                  |
| Header<br/>                   | <dl> <dt>Commctrl.h</dt> </dl> |



## See also

<dl> <dt>

[About Header Controls](header-controls.md)
</dt> </dl>

**Header:** Commctrl.h
