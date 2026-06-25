# EM\_SETBKGNDCOLOR message

The **EM\_SETBKGNDCOLOR** message sets the background color for a rich edit control.

## Parameters

<dl> <dt>

*wParam* 
</dt> <dd>

Specifies whether to use the system color. If this parameter is a nonzero value, the background is set to the window background system color. Otherwise, the background is set to the specified color.

</dd> <dt>

*lParam* 
</dt> <dd>

A [**COLORREF**](/windows/desktop/gdi/colorref) structure specifying the color if *wParam* is zero. To generate a **COLORREF**, use the [**RGB**](/windows/desktop/api/wingdi/nf-wingdi-rgb) macro.

</dd> </dl>

## Return value

This message returns the original background color.

## Requirements



| Requirement | Value |
|-------------------------------------|---------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows Vista \[desktop apps only\]<br/>                                        |
| Minimum supported server<br/> | Windows Server 2003 \[desktop apps only\]<br/>                                  |
| Header<br/>                   | <dl> <dt>Richedit.h</dt> </dl> |



## See also

<dl> <dt>

**Other Resources**
</dt> <dt>

[**COLORREF**](/windows/desktop/gdi/colorref)
</dt> <dt>

[**RGB**](/windows/desktop/api/wingdi/nf-wingdi-rgb)
</dt> </dl>

**Header:** Richedit.h
