# LB\_GETLOCALE message

Gets the current locale of the list box. You can use the locale to determine the correct sorting order of displayed text (for list boxes with the [**LBS\_SORT**](list-box-styles.md) style) and of text added by the [**LB\_ADDSTRING**](lb-addstring.md) message.

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

The return value specifies the current locale of the list box. The [**HIWORD**](../winmsg/hiword.md) contains the country/region code and the [**LOWORD**](../winmsg/loword.md) contains the language identifier.

## Remarks

The language identifier consists of a sublanguage identifier and a primary language identifier. Use the [**PRIMARYLANGID**](/windows/desktop/api/winnt/nf-winnt-primarylangid) macro to extract the primary language identifier from the [**LOWORD**](../winmsg/loword.md) of the return value, and the [**SUBLANGID**](/windows/desktop/api/winnt/nf-winnt-sublangid) macro to extract the sublanguage identifier.

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

[**LB\_ADDSTRING**](lb-addstring.md)
</dt> <dt>

[**LB\_SETLOCALE**](lb-setlocale.md)
</dt> <dt>

**Other Resources**
</dt> <dt>

[**PRIMARYLANGID**](/windows/desktop/api/winnt/nf-winnt-primarylangid)
</dt> <dt>

[**SUBLANGID**](/windows/desktop/api/winnt/nf-winnt-sublangid)
</dt> </dl>

**Header:** Winuser.h
