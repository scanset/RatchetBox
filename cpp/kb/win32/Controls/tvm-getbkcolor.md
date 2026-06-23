# TVM\_GETBKCOLOR message

Retrieves the current background color of the control. You can send this message explicitly or by using the [**TreeView\_GetBkColor**](/windows/desktop/api/Commctrl/nf-commctrl-treeview_getbkcolor) macro.

## Parameters

<dl> <dt>

*wParam* 
</dt> <dd>Must be zero.</dd> <dt>

*lParam* 
</dt> <dd>Must be zero.</dd> </dl>

## Return value

Returns a [**COLORREF**](/windows/desktop/gdi/colorref) value that represents the current background color. If this value is -1, the control is using the system color for the background color.

## Requirements



| Requirement | Value |
|-------------------------------------|---------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows Vista \[desktop apps only\]<br/>                                        |
| Minimum supported server<br/> | Windows Server 2003 \[desktop apps only\]<br/>                                  |
| Header<br/>                   | <dl> <dt>Commctrl.h</dt> </dl> |



## See also

<dl> <dt>

[**TVM\_SETBKCOLOR**](tvm-setbkcolor.md)
</dt> </dl>

**Header:** Commctrl.h
