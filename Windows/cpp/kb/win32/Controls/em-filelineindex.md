# EM_FILELINEINDEX message (CommCtrl.h)

Gets the character index of the first character of a specified line in a multiline edit control, independently of how lines are displayed on the screen.. A character index is the zero-based index of the character from the beginning of the edit control.

## Parameters

<dl> <dt>

*wParam* 
</dt> <dd>

The zero-based line number. A value of -1 specifies the current line number (the line that contains the caret).

</dd> <dt>

*lParam* 
</dt> <dd>

This parameter is not used.

</dd> </dl>

## Return value

The return value is the character index of the line specified in the *wParam* parameter, independently of how lines are displayed on the screen, or it is -1 if the specified line number is greater than the number of lines in the edit control.

## Requirements



| Requirement | Value |
|-------------------------------------|----------------------------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows 10, 1809 \[desktop apps only\]<br/>                                                           |
| Minimum supported server<br/> | Windows Server 2019 \[desktop apps only\]<br/>                                                     |
| Header<br/>                   | <dl> <dt>CommCtrl.h</dt> </dl> |



## See also

<dl> <dt>

[**EM\_FILELINEFROMCHAR**](em-filelinefromchar.md)
</dt> </dl>

**Header:** CommCtrl.h
