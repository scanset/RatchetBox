# EM\_GETMARGINS message

Gets the widths of the left and right margins for an edit control.

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

Returns the width of the left margin in the LOWORD, and the width of the right margin in the HIWORD.

## Remarks

**Rich Edit:** The **EM\_GETMARGINS** message is not supported.

## Requirements



| Requirement | Value |
|-------------------------------------|----------------------------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows Vista \[desktop apps only\]<br/>                                                           |
| Minimum supported server<br/> | Windows Server 2003 \[desktop apps only\]<br/>                                                     |
| Header<br/>                   | <dl> <dt>Winuser.h (include Windows.h)</dt> </dl> |



## See also

<dl> <dt>

[**EM\_SETMARGINS**](em-setmargins.md)
</dt> </dl>

**Header:** Winuser.h
