# EM\_GETTYPOGRAPHYOPTIONS message

Returns the current state of the typography options of a rich edit control.

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

Returns the current typography options. For a list of options, see [**EM\_SETTYPOGRAPHYOPTIONS**](em-settypographyoptions.md).

## Remarks

You can turn on advanced line breaking by sending the [**EM\_SETTYPOGRAPHYOPTIONS**](em-settypographyoptions.md) message. Advanced and normal line breaking may also be turned on automatically by the rich edit control if it is needed for certain languages.

## Requirements



| Requirement | Value |
|-------------------------------------|---------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows Vista \[desktop apps only\]<br/>                                        |
| Minimum supported server<br/> | Windows Server 2003 \[desktop apps only\]<br/>                                  |
| Redistributable<br/>          | Rich Edit 3.0<br/>                                                              |
| Header<br/>                   | <dl> <dt>Richedit.h</dt> </dl> |



## See also

<dl> <dt>

**Reference**
</dt> <dt>

[**EM\_SETTYPOGRAPHYOPTIONS**](em-settypographyoptions.md)
</dt> <dt>

**Conceptual**
</dt> <dt>

[About Rich Edit Controls](about-rich-edit-controls.md)
</dt> </dl>

**Header:** Richedit.h
