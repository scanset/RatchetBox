# EM\_SETIMECOLOR message

Sets the Input Method Editor (IME) composition color for a rich edit control.

> [!Note]  
> This message is supported only in Asian-language versions of Microsoft Rich Edit 1.0. It is not supported in any later versions.

 

## Parameters

<dl> <dt>

*wParam* 
</dt> <dd>

This parameter is not used; it must be zero.

</dd> <dt>

*lParam* 
</dt> <dd>

Pointer to a [**COMPCOLOR**](/windows/desktop/api/Richedit/ns-richedit-compcolor) structure that contains the composition color to be set.

</dd> </dl>

## Return value

If the operation succeeds, the return value is a nonzero value.

If the operation fails, the return value is zero.

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

[**EM\_GETIMECOLOR**](em-getimecolor.md)
</dt> <dt>

[**COMPCOLOR**](/windows/desktop/api/Richedit/ns-richedit-compcolor)
</dt> </dl>

**Header:** Richedit.h
