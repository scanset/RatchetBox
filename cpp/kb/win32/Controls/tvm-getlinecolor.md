# TVM\_GETLINECOLOR message

The **TVM\_GETLINECOLOR** message gets the current line color.

## Parameters

<dl> <dt>

*wParam* 
</dt> <dd>Must be zero.</dd> <dt>

*lParam* 
</dt> <dd>Must be zero.</dd> </dl>

## Return value

Returns the current line color, or the CLR\_DEFAULT value if none has been specified.

## Remarks

This message only retrieves line colors. To retrieve the colors of the '+' and '-' inside the buttons, use the [**TVM\_GETTEXTCOLOR**](tvm-gettextcolor.md) message.

## Requirements



| Requirement | Value |
|-------------------------------------|---------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows Vista \[desktop apps only\]<br/>                                        |
| Minimum supported server<br/> | Windows Server 2003 \[desktop apps only\]<br/>                                  |
| Header<br/>                   | <dl> <dt>Commctrl.h</dt> </dl> |



## See also

<dl> <dt>

[**TVM\_SETLINECOLOR**](tvm-setlinecolor.md)
</dt> </dl>

**Header:** Commctrl.h
