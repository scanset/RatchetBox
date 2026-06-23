# EM\_GETCTFOPENSTATUS message

Determines if the Text Services Framework (TSF) keyboard is open or closed.

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

If the TSF keyboard is open, the return value is **TRUE**. Otherwise, it is **FALSE**.

## Requirements



| Requirement | Value |
|-------------------------------------|---------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows XP with SP1 \[desktop apps only\]<br/>                                  |
| Minimum supported server<br/> | Windows Server 2003 \[desktop apps only\]<br/>                                  |
| Header<br/>                   | <dl> <dt>Richedit.h</dt> </dl> |



## See also

<dl> <dt>

[**EM\_SETCTFOPENSTATUS**](em-setctfopenstatus.md)
</dt> </dl>

**Header:** Richedit.h
