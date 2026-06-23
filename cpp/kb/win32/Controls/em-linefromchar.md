# EM\_LINEFROMCHAR message

Gets the index of the line that contains the specified character index in a multiline edit control. A character index is the zero-based index of the character from the beginning of the edit control. You can send this message to either an edit control or a rich edit control.

## Parameters

<dl> <dt>

*wParam* 
</dt> <dd>

The character index of the character contained in the line whose number is to be retrieved. If this parameter is -1, **EM\_LINEFROMCHAR** retrieves either the line number of the current line (the line containing the caret) or, if there is a selection, the line number of the line containing the beginning of the selection.

</dd> <dt>

*lParam* 
</dt> <dd>

This parameter is not used.

</dd> </dl>

## Return value

The return value is the zero-based line number of the line containing the character index specified by *wParam*.

## Remarks

**Rich Edit:** Supported in Microsoft Rich Edit 1.0 and later. If the character index is greater than 64,000, use the [**EM\_EXLINEFROMCHAR**](em-exlinefromchar.md) message. For information about the compatibility of rich edit versions with the various system versions, see [About Rich Edit Controls](about-rich-edit-controls.md).

## Requirements



| Requirement | Value |
|-------------------------------------|----------------------------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows Vista \[desktop apps only\]<br/>                                                           |
| Minimum supported server<br/> | Windows Server 2003 \[desktop apps only\]<br/>                                                     |
| Header<br/>                   | <dl> <dt>Winuser.h (include Windows.h)</dt> </dl> |



## See also

<dl> <dt>

**Reference**
</dt> <dt>

[**EM\_EXLINEFROMCHAR**](em-exlinefromchar.md)
</dt> <dt>

[**EM\_LINEINDEX**](em-lineindex.md)
</dt> </dl>

**Header:** Winuser.h
