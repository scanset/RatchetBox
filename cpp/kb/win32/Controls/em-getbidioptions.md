# EM\_GETBIDIOPTIONS message

Indicates the current state of the bidirectional options in the rich edit control.

## Parameters

<dl> <dt>

*wParam* 
</dt> <dd>

This parameter is not used; it must be zero.

</dd> <dt>

*lParam* 
</dt> <dd>

A [**BIDIOPTIONS**](/windows/desktop/api/Richedit/ns-richedit-bidioptions) structure that receives the current state of the bidirectional options in the rich edit control.

</dd> </dl>

## Return value

This message does not return a value.

## Remarks

This message sets the values of the **wMask** and **wEffects** members to the value of the current state of the bidirectional options in the rich edit control.

## Requirements



| Requirement | Value |
|-------------------------------------|---------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows Vista \[desktop apps only\]<br/>                                        |
| Minimum supported server<br/> | Windows Server 2003 \[desktop apps only\]<br/>                                  |
| Redistributable<br/>          | Rich Edit 3.0<br/>                                                              |
| Header<br/>                   | <dl> <dt>Richedit.h</dt> </dl> |



## See also

<dl> <dt>

**Reference**
</dt> <dt>

[**BIDIOPTIONS**](/windows/desktop/api/Richedit/ns-richedit-bidioptions)
</dt> <dt>

[**EM\_SETBIDIOPTIONS**](em-setbidioptions.md)
</dt> </dl>

**Header:** Richedit.h
