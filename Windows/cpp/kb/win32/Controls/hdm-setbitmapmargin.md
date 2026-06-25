# HDM\_SETBITMAPMARGIN message

Sets the width of the margin, specified in pixels, of a bitmap in an existing header control. You can send this message explicitly or use the [**Header\_SetBitmapMargin**](/windows/desktop/api/Commctrl/nf-commctrl-header_setbitmapmargin) macro.

## Parameters

<dl> <dt>

*wParam* 
</dt> <dd>

The width, specified in pixels, of the margin that surrounds a bitmap within an existing header control.

</dd> <dt>

*lParam* 
</dt> <dd>Must be zero.</dd> </dl>

## Return value

Returns the width of the bitmap margin, in pixels. If the bitmap margin was not previously specified, the default value of 3\* [**GetSystemMetrics**](/windows/desktop/api/winuser/nf-winuser-getsystemmetrics) (*SM\_CXEDGE*) is returned.

## Requirements



| Requirement | Value |
|-------------------------------------|---------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows Vista \[desktop apps only\]<br/>                                        |
| Minimum supported server<br/> | Windows Server 2003 \[desktop apps only\]<br/>                                  |
| Header<br/>                   | <dl> <dt>Commctrl.h</dt> </dl> |



## See also

<dl> <dt>

[**HDM\_GETBITMAPMARGIN**](hdm-getbitmapmargin.md)
</dt> </dl>

**Header:** Commctrl.h
