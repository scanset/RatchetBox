# LB\_GETANCHORINDEX message

Gets the index of the anchor item that is, the item from which a multiple selection starts. A multiple selection spans all items from the anchor item to the caret item.

## Parameters

<dl> <dt>

*wParam* 
</dt> <dd>

Not used; must be zero.

</dd> <dt>

*lParam* 
</dt> <dd>

Not used; must be zero.

</dd> </dl>

## Return value

The return value is the zero-based index of the anchor item, or LB_ERR if an error occurs.

## Requirements



| Requirement | Value |
|-------------------------------------|----------------------------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows Vista \[desktop apps only\]<br/>                                                           |
| Minimum supported server<br/> | Windows Server 2003 \[desktop apps only\]<br/>                                                     |
| Header<br/>                   | <dl> <dt>Winuser.h (include Windows.h)</dt> </dl> |



## See also

<dl> <dt>

[**LB\_SETANCHORINDEX**](lb-setanchorindex.md)
</dt> </dl>

**Header:** Winuser.h
