# PGM\_SETBUTTONSIZE message

Sets the current button size for the pager control. You can send this message explicitly or use the [**Pager\_SetButtonSize**](/windows/desktop/api/Commctrl/nf-commctrl-pager_setbuttonsize) macro.

## Parameters

<dl> <dt>

*wParam* 
</dt> <dd>Must be zero.</dd> <dt>

*lParam* 
</dt> <dd>

Value of type **int** that contains the new button size, in pixels.

</dd> </dl>

## Return value

Returns an **int** value that contains the previous button size, in pixels.

## Remarks

If the pager control has the [**PGS\_HORZ**](pager-control-styles.md) style, the button size determines the width of the pager buttons. If the pager control has the [**PGS\_VERT**](pager-control-styles.md) style, the button size determines the height of the pager buttons. By default, the pager control sets its button size to three-fourths of the width of the scroll bar.

There is a minimum size to the pager button, currently 12 pixels. However, this can change so you should not depend on this value.

## Requirements



| Requirement | Value |
|-------------------------------------|---------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows Vista \[desktop apps only\]<br/>                                        |
| Minimum supported server<br/> | Windows Server 2003 \[desktop apps only\]<br/>                                  |
| Header<br/>                   | <dl> <dt>Commctrl.h</dt> </dl> |



## See also

<dl> <dt>

[**PGM\_GETBUTTONSIZE**](pgm-getbuttonsize.md)
</dt> </dl>

**Header:** Commctrl.h
