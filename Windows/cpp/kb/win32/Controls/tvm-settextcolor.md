# TVM\_SETTEXTCOLOR message

Sets the text color of the control. You can send this message explicitly or by using the [**TreeView\_SetTextColor**](/windows/desktop/api/Commctrl/nf-commctrl-treeview_settextcolor) macro.

## Parameters

<dl> <dt>

*wParam* 
</dt> <dd>Must be zero.</dd> <dt>

*lParam* 
</dt> <dd>

[**COLORREF**](/windows/desktop/gdi/colorref) value that contains the new text color. If this argument is -1, the control will revert to using the system color for the text color.

</dd> </dl>

## Return value

Returns a **COLORREF** value that represents the previous text color. If this value is -1, the control was using the system color for the text color.

## Requirements



| Requirement | Value |
|-------------------------------------|---------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows Vista \[desktop apps only\]<br/>                                        |
| Minimum supported server<br/> | Windows Server 2003 \[desktop apps only\]<br/>                                  |
| Header<br/>                   | <dl> <dt>Commctrl.h</dt> </dl> |



## See also

<dl> <dt>

[**TVM\_GETTEXTCOLOR**](tvm-gettextcolor.md)
</dt> </dl>

**Header:** Commctrl.h
