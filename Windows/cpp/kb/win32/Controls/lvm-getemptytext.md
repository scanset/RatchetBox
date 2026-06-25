# LVM\_GETEMPTYTEXT message

Gets the text meant for display when the list-view control appears empty. Send this message explicitly or by using the [**ListView\_GetEmptyText**](/windows/desktop/api/Commctrl/nf-commctrl-listview_getemptytext) macro.

## Parameters

<dl> <dt>

*wParam* \[in\]
</dt> <dd>

The size of the buffer pointed to by *lParam*, including the terminating **NULL**.

</dd> <dt>

*lParam* \[in, out\]
</dt> <dd>

A pointer to a null-terminated, Unicode buffer of size specified by *wParam* to receive the text. The caller is responsible for allocating the buffer.

</dd> </dl>

## Return value

Returns **TRUE** if successful, or **FALSE** otherwise.

## Requirements



| Requirement | Value |
|-------------------------------------|---------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows Vista \[desktop apps only\]<br/>                                        |
| Minimum supported server<br/> | Windows Server 2008 \[desktop apps only\]<br/>                                  |
| Header<br/>                   | <dl> <dt>Commctrl.h</dt> </dl> |

**Header:** Commctrl.h
