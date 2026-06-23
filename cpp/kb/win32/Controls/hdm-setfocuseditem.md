# HDM\_SETFOCUSEDITEM message

Sets the focus to a specified item in a header control. Send this message explicitly or by using the [**Header\_SetFocusedItem**](/windows/desktop/api/Commctrl/nf-commctrl-header_setfocuseditem) macro.

## Parameters

<dl> <dt>

*wParam* 
</dt> <dd>Not used. Must be zero.</dd> <dt>

*lParam* \[in\]
</dt> <dd>

The index of item.

</dd> </dl>

## Return value

Returns **TRUE** if successful, or **FALSE** otherwise.

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
