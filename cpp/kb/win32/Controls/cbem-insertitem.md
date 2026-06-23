# CBEM\_INSERTITEM message

Inserts a new item in a ComboBoxEx control.

## Parameters

<dl> <dt>

*wParam* 
</dt> <dd>Must be zero.</dd> <dt>

*lParam* 
</dt> <dd>

A pointer to a [**COMBOBOXEXITEM**](/windows/win32/api/commctrl/ns-commctrl-comboboxexitema) structure that contains information about the item to be inserted. When the message is sent, the **iItem** member must be set to indicate the zero-based index at which to insert the item. To insert an item at the end of the list, set the **iItem** member to -1.

</dd> </dl>

## Return value

Returns the index at which the new item was inserted if successful, or -1 otherwise.

## Requirements



| Requirement | Value |
|-------------------------------------|---------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows Vista \[desktop apps only\]<br/>                                        |
| Minimum supported server<br/> | Windows Server 2003 \[desktop apps only\]<br/>                                  |
| Header<br/>                   | <dl> <dt>Commctrl.h</dt> </dl> |
| Unicode and ANSI names<br/>   | **CBEM\_INSERTITEMW** (Unicode) and **CBEM\_INSERTITEMA** (ANSI)<br/>           |

**Header:** Commctrl.h
