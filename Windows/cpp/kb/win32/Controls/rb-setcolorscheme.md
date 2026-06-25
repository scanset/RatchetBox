# RB\_SETCOLORSCHEME message

Sets the color scheme information for the rebar control.

## Parameters

<dl> <dt>

*wParam* 
</dt> <dd>Must be zero.</dd> <dt>

*lParam* 
</dt> <dd>

Pointer to a [**COLORSCHEME**](/windows/win32/api/commctrl/ns-commctrl-colorscheme) structure that contains the color scheme information.

</dd> </dl>

## Return value

The return value for this message is not used.

## Remarks

The rebar control uses the color scheme information when drawing the 3-D elements in the control and bands.

## Requirements



| Requirement | Value |
|-------------------------------------|---------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows Vista \[desktop apps only\]<br/>                                        |
| Minimum supported server<br/> | Windows Server 2003 \[desktop apps only\]<br/>                                  |
| Header<br/>                   | <dl> <dt>Commctrl.h</dt> </dl> |



## See also

<dl> <dt>

[**RB\_GETCOLORSCHEME**](rb-getcolorscheme.md)
</dt> </dl>

**Header:** Commctrl.h
