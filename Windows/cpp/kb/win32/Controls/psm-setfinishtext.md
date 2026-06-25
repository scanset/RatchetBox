# PSM\_SETFINISHTEXT message

Sets the text of the **Finish** button in a wizard, shows and enables the button, and hides the **Next** and **Back** buttons. You can send this message explicitly or by using the [**PropSheet\_SetFinishText**](/windows/desktop/api/Prsht/nf-prsht-propsheet_setfinishtext) macro.

## Parameters

<dl> <dt>

*wParam* 
</dt> <dd>

Must be zero.

</dd> <dt>

*lParam* 
</dt> <dd>

Pointer to the new text for the **Finish** button.

</dd> </dl>

## Return value

No return value.

## Remarks

By default, the **Finish** button does not have a keyboard accelerator. You can create a keyboard accelerator with this message by including an ampersand (&) in the text string that you assign to *lParam*. For example, "&Finish" defines F as the accelerator key.

## Requirements



| Requirement | Value |
|-------------------------------------|------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows Vista \[desktop apps only\]<br/>                                     |
| Minimum supported server<br/> | Windows Server 2003 \[desktop apps only\]<br/>                               |
| Header<br/>                   | <dl> <dt>Prsht.h</dt> </dl> |
| Unicode and ANSI names<br/>   | **PSM\_SETFINISHTEXTW** (Unicode) and **PSM\_SETFINISHTEXTA** (ANSI)<br/>    |

**Header:** Prsht.h
