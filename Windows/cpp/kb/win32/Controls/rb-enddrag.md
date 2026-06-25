# RB\_ENDDRAG message

Terminates the rebar control's drag-and-drop operation. This message does not cause an [RBN\_ENDDRAG](rbn-enddrag.md) notification to be sent.

## Parameters

<dl> <dt>

*wParam* 
</dt> <dd>Must be zero.</dd> <dt>

*lParam* 
</dt> <dd>Must be zero.</dd> </dl>

## Return value

The return value for this message is not used.

## Requirements



| Requirement | Value |
|-------------------------------------|---------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows Vista \[desktop apps only\]<br/>                                        |
| Minimum supported server<br/> | Windows Server 2003 \[desktop apps only\]<br/>                                  |
| Header<br/>                   | <dl> <dt>Commctrl.h</dt> </dl> |



## See also

<dl> <dt>

**Reference**
</dt> <dt>

[**RB\_BEGINDRAG**](rb-begindrag.md)
</dt> <dt>

[**RB\_DRAGMOVE**](rb-dragmove.md)
</dt> </dl>

**Header:** Commctrl.h
