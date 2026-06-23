# EM\_SETHYPHENATEINFO message

Sets the way a rich edit control does hyphenation.

## Parameters

<dl> <dt>

*wParam* 
</dt> <dd>

Pointer to a [**HYPHENATEINFO**](/windows/win32/api/richedit/ns-richedit-hyphenateinfo) structure.

</dd> <dt>

*lParam* 
</dt> <dd>

Not used, must be zero.

</dd> </dl>

## Remarks

> [!Note]  
> To enable hyphenation, the client must call [**EM\_SETTYPOGRAPHYOPTIONS**](em-settypographyoptions.md), specifying TO\_ADVANCEDTYPOGRAPHY.

 

## Requirements



| Requirement | Value |
|-------------------------------------|---------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows XP with SP1 \[desktop apps only\]<br/>                                  |
| Minimum supported server<br/> | Windows Server 2003 \[desktop apps only\]<br/>                                  |
| Header<br/>                   | <dl> <dt>Richedit.h</dt> </dl> |



## See also

<dl> <dt>

[**EM\_GETHYPHENATEINFO**](em-gethyphenateinfo.md)
</dt> </dl>

**Header:** Richedit.h
