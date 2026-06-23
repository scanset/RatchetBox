# RB\_SETTEXTCOLOR message

Sets a rebar control's default text color.

## Parameters

<dl> <dt>

*wParam* 
</dt> <dd>Must be zero.</dd> <dt>

*lParam* 
</dt> <dd>

[**COLORREF**](/windows/desktop/gdi/colorref) value that represents the new default text color.

</dd> </dl>

## Return value

Returns a [**COLORREF**](/windows/desktop/gdi/colorref) value that represents the previous default text color.

## Remarks

The rebar control's default text color is used to draw the text in a rebar control and all bands that are added after this message has been sent. The default text color for a particular band can be overridden when a band is added or modified by setting the RBBIM\_COLORS flag in **fMask** and setting **clrBack** in the [**REBARBANDINFO**](/windows/win32/api/commctrl/ns-commctrl-rebarbandinfoa) structure.

## Requirements



| Requirement | Value |
|-------------------------------------|---------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows Vista \[desktop apps only\]<br/>                                        |
| Minimum supported server<br/> | Windows Server 2003 \[desktop apps only\]<br/>                                  |
| Header<br/>                   | <dl> <dt>Commctrl.h</dt> </dl> |



## See also

<dl> <dt>

[**RB\_GETTEXTCOLOR**](rb-gettextcolor.md)
</dt> </dl>

**Header:** Commctrl.h
