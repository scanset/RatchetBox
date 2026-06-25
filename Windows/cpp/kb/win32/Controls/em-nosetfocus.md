# EM\_NOSETFOCUS message

\[Intended for internal use; not recommended for use in applications. This message may not be supported in future versions of Windows.\]

Prevents a single-line edit control from receiving keyboard focus. You can send this message explicitly or by using the [**Edit\_NoSetFocus**](/windows/desktop/api/Commctrl/nf-commctrl-edit_nosetfocus) macro.

## Parameters

<dl> <dt>

*wParam* 
</dt> <dd>

Not used; must be zero.

</dd> <dt>

*lParam* 
</dt> <dd>

Not used; must be zero.

</dd> </dl>

## Return value

The return value is not used.

## Security Considerations

Using this message might compromise the security of your program.

## Remarks

This message is ignored if the edit control is not a single-line edit control.

After this message is sent, the effect is permanent.

## Requirements



| Requirement | Value |
|-------------------------------------|---------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows Vista \[desktop apps only\]<br/>                                        |
| Minimum supported server<br/> | Windows Server 2008 \[desktop apps only\]<br/>                                  |
| Header<br/>                   | <dl> <dt>Commctrl.h</dt> </dl> |



## See also

<dl> <dt>

**Reference**
</dt> <dt>

[**Edit\_NoSetFocus**](/windows/desktop/api/Commctrl/nf-commctrl-edit_nosetfocus)
</dt> <dt>

[**EM\_TAKEFOCUS**](em-takefocus.md)
</dt> </dl>

**Header:** Commctrl.h
