# LVM\_GETWORKAREAS message

Retrieves the working areas from a list-view control. You can send this message explicitly or use the [**ListView\_GetWorkAreas**](/windows/desktop/api/Commctrl/nf-commctrl-listview_getworkareas) macro.

## Parameters

<dl> <dt>

*wParam* 
</dt> <dd>

The number of [**RECT**](/windows/win32/api/windef/ns-windef-rect) structures in the array at *lParam*.

</dd> <dt>

*lParam* 
</dt> <dd>

Pointer to an array of [**RECT**](/windows/win32/api/windef/ns-windef-rect) structures that receive the current working areas of the list-view control. Values in these structures are in client coordinates. *wParam* specifies the number of structures in this array.

</dd> </dl>

## Return value

The return value for this message is not used.

## Requirements



| Requirement | Value |
|-------------------------------------|---------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows Vista \[desktop apps only\]<br/>                                        |
| Minimum supported server<br/> | Windows Server 2003 \[desktop apps only\]<br/>                                  |
| Header<br/>                   | <dl> <dt>Commctrl.h</dt> </dl> |



## See also

<dl> <dt>

[Using List-View Controls](using-list-view-controls.md)
</dt> </dl>

**Header:** Commctrl.h
