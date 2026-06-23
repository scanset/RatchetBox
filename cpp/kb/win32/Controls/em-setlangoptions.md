# EM\_SETLANGOPTIONS message

Sets options for Input Method Editor (IME) and Asian language support in a rich edit control.

## Parameters

<dl> <dt>

*wParam* 
</dt> <dd>

This parameter is not used; it must be zero.

</dd> <dt>

*lParam* 
</dt> <dd>

Specifies the language options. For a list of possible values, see [**EM\_GETLANGOPTIONS**](em-getlangoptions.md).

</dd> </dl>

## Return value

This message returns a value of 1.

## Remarks

The **EM\_SETLANGOPTIONS** message controls the following:

-   Automatic font binding.
-   Automatic keyboard switching.
-   Automatic font size adjustment.
-   Use of user-interface default fonts instead of document default fonts.
-   Notifications to client during IME composition.
-   How IME aborts composition mode.
-   Spell checking, autocorrect, and touch keyboard prediction.

This message sets the values of all language option flags. To change a subset of the flags, send the [**EM\_GETLANGOPTIONS**](em-getlangoptions.md) message to get the current option flags, change the flags that you need to change, and then send the **EM\_SETLANGOPTIONS** message with the result.

## Requirements



| Requirement | Value |
|-------------------------------------|---------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows Vista \[desktop apps only\]<br/>                                        |
| Minimum supported server<br/> | Windows Server 2003 \[desktop apps only\]<br/>                                  |
| Header<br/>                   | <dl> <dt>Richedit.h</dt> </dl> |



## See also

<dl> <dt>

[**EM\_GETLANGOPTIONS**](em-getlangoptions.md)
</dt> </dl>

**Header:** Richedit.h
