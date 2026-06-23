# TVM\_SETSCROLLTIME message

Sets the maximum scroll time for the tree-view control. You can send this message explicitly or by using the [**TreeView\_SetScrollTime**](/windows/desktop/api/Commctrl/nf-commctrl-treeview_setscrolltime) macro.

## Parameters

<dl> <dt>

*wParam* 
</dt> <dd>

New maximum scroll time, in milliseconds.

</dd> <dt>

*lParam* 
</dt> <dd>Must be zero.</dd> </dl>

## Return value

Returns the previous maximum scroll time, in milliseconds.

## Remarks

The maximum scroll time is the longest amount of time that a scroll operation can take. Scrolling will be adjusted so that the scroll will take place within the maximum scroll time. A scroll operation may take less time than the maximum.

## Requirements



| Requirement | Value |
|-------------------------------------|---------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows Vista \[desktop apps only\]<br/>                                        |
| Minimum supported server<br/> | Windows Server 2003 \[desktop apps only\]<br/>                                  |
| Header<br/>                   | <dl> <dt>Commctrl.h</dt> </dl> |



## See also

<dl> <dt>

[**TVM\_GETSCROLLTIME**](tvm-getscrolltime.md)
</dt> </dl>

**Header:** Commctrl.h
