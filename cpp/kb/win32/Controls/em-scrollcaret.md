# EM\_SCROLLCARET message

Scrolls the caret into view in an edit control. You can send this message to either an edit control or a rich edit control.

## Parameters

<dl> <dt>

*wParam* 
</dt> <dd>

This parameter is reserved. It should be set to zero.

</dd> <dt>

*lParam* 
</dt> <dd>

This parameter is reserved. It should be set to zero.

</dd> </dl>

## Return value

The return value is not meaningful.

## Remarks

**Rich Edit:** Supported in Microsoft Rich Edit 1.0 and later. For information about the compatibility of rich edit versions with the various system versions, see [About Rich Edit Controls](about-rich-edit-controls.md).

## Requirements



| Requirement | Value |
|-------------------------------------|----------------------------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows Vista \[desktop apps only\]<br/>                                                           |
| Minimum supported server<br/> | Windows Server 2003 \[desktop apps only\]<br/>                                                     |
| Header<br/>                   | <dl> <dt>Winuser.h (include Windows.h)</dt> </dl> |



## See also

<dl> <dt>

**Reference**
</dt> <dt>

[**EM\_LINESCROLL**](em-linescroll.md)
</dt> <dt>

[**EM\_SCROLL**](em-scroll.md)
</dt> <dt>

[**WM\_VSCROLL**](wm-vscroll.md)
</dt> </dl>

**Header:** Winuser.h
