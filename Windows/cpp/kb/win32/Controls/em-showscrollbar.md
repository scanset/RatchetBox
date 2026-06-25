# EM\_SHOWSCROLLBAR message

Shows or hides one of the scroll bars in the host window of a rich edit control.

## Parameters

<dl> <dt>

*wParam* 
</dt> <dd>

Identifies which scroll bar to display: horizontal or vertical. This parameter must be **SB\_VERT** or **SB\_HORZ**.

</dd> <dt>

*lParam* 
</dt> <dd>

Specifies whether to show the scroll bar or hide it. Specify **TRUE** to show the scroll bar and **FALSE** to hide it.

</dd> </dl>

## Return value

This message does not return a value.

## Remarks

This method is only valid when the control is in-place active. Calls made while the control is inactive may fail.

## Requirements



| Requirement | Value |
|-------------------------------------|---------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows Vista \[desktop apps only\]<br/>                                        |
| Minimum supported server<br/> | Windows Server 2003 \[desktop apps only\]<br/>                                  |
| Header<br/>                   | <dl> <dt>Richedit.h</dt> </dl> |



## See also

<dl> <dt>

**Reference**
</dt> <dt>

[**EM\_GETSCROLLPOS**](em-getscrollpos.md)
</dt> <dt>

[**EM\_SETSCROLLPOS**](em-setscrollpos.md)
</dt> </dl>

**Header:** Richedit.h
