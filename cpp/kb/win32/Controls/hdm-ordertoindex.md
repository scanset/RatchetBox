# HDM\_ORDERTOINDEX message

Retrieves an index value for an item based on its order in the header control. You can send this message explicitly or use the [**Header\_OrderToIndex**](/windows/desktop/api/Commctrl/nf-commctrl-header_ordertoindex) macro.

## Parameters

<dl> <dt>

*wParam* 
</dt> <dd>

The order in which the item appears within the header control, from left to right. For example, the index value of the item in the far left column would be 0. The value for the next item to the right would be 1, and so on.

</dd> <dt>

*lParam* 
</dt> <dd>Must be zero.</dd> </dl>

## Return value

Returns INT that indicates the item index. If *wParam* is invalid (negative or too large), the return equals *wParam*.

## Requirements



| Requirement | Value |
|-------------------------------------|---------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows Vista \[desktop apps only\]<br/>                                        |
| Minimum supported server<br/> | Windows Server 2003 \[desktop apps only\]<br/>                                  |
| Header<br/>                   | <dl> <dt>Commctrl.h</dt> </dl> |

**Header:** Commctrl.h
