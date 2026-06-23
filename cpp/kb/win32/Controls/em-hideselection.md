# EM\_HIDESELECTION message

The **EM\_HIDESELECTION** message hides or shows the selection in a rich edit control.

## Parameters

<dl> <dt>

*wParam* 
</dt> <dd>

Value specifying whether to hide or show the selection. If this parameter is zero, the selection is shown. Otherwise, the selection is hidden.

</dd> <dt>

*lParam* 
</dt> <dd>

This parameter is not used; it must be zero.

</dd> </dl>

## Return value

This message does not return a value.

## Requirements



| Requirement | Value |
|-------------------------------------|---------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows Vista \[desktop apps only\]<br/>                                        |
| Minimum supported server<br/> | Windows Server 2003 \[desktop apps only\]<br/>                                  |
| Header<br/>                   | <dl> <dt>Richedit.h</dt> </dl> |

**Header:** Richedit.h
