# EM\_CANPASTE message

Determines whether a rich edit control can paste a specified clipboard format.

## Parameters

<dl> <dt>

*wParam* 
</dt> <dd>

Specifies the [Clipboard Formats](/windows/desktop/dataxchg/clipboard-formats) to try. To try any format currently on the clipboard, set this parameter to zero.

</dd> <dt>

*lParam* 
</dt> <dd>

This parameter is not used; it must be zero.

</dd> </dl>

## Return value

If the clipboard format can be pasted, the return value is a nonzero value.

If the clipboard format cannot be pasted, the return value is zero.

## Requirements



| Requirement | Value |
|-------------------------------------|---------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows Vista \[desktop apps only\]<br/>                                        |
| Minimum supported server<br/> | Windows Server 2003 \[desktop apps only\]<br/>                                  |
| Header<br/>                   | <dl> <dt>Richedit.h</dt> </dl> |



## See also

<dl> <dt>

[**SendMessage**](/windows/desktop/api/winuser/nf-winuser-sendmessage)
</dt> </dl>

**Header:** Richedit.h
