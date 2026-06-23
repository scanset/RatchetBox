# CB\_LIMITTEXT message

Limits the length of the text the user may type into the edit control of a combo box.

## Parameters

<dl> <dt>

*wParam* 
</dt> <dd>

The maximum number of **TCHARs** the user can enter, not including the terminating null character. If this parameter is zero, the text length is limited to 0x7FFFFFFE characters.

</dd> <dt>

*lParam* 
</dt> <dd>

This parameter is not used.

</dd> </dl>

## Return value

The return value is always **TRUE**.

## Remarks

If the combo box does not have the [**CBS\_AUTOHSCROLL**](combo-box-styles.md) style, setting the text limit to be larger than the size of the edit control has no effect.

The **CB\_LIMITTEXT** message limits only the text the user can enter. It has no effect on any text already in the edit control when the message is sent, nor does it affect the length of the text copied to the edit control when a string in the list box is selected.

The default limit to the text a user can enter in the edit control is 30,000 **TCHARs**.

## Requirements



| Requirement | Value |
|-------------------------------------|----------------------------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows Vista \[desktop apps only\]<br/>                                                           |
| Minimum supported server<br/> | Windows Server 2003 \[desktop apps only\]<br/>                                                     |
| Header<br/>                   | <dl> <dt>Winuser.h (include Windows.h)</dt> </dl> |

**Header:** Winuser.h
