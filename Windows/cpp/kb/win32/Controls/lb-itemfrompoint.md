# LB\_ITEMFROMPOINT message

Gets the zero-based index of the item nearest the specified point in a list box.

## Parameters

<dl> <dt>

*wParam* 
</dt> <dd>

This parameter is not used.

</dd> <dt>

*lParam* 
</dt> <dd>

The [**LOWORD**](../winmsg/loword.md) specifies the x-coordinate of a point, relative to the upper-left corner of the client area of the list box.

The [**HIWORD**](../winmsg/hiword.md) specifies the y-coordinate of a point, relative to the upper-left corner of the client area of the list box.

</dd> </dl>

## Return value

The return value contains the index of the nearest item in the [**LOWORD**](../winmsg/loword.md). The [**HIWORD**](../winmsg/hiword.md) is zero if the specified point is in the client area of the list box, or one if it is outside the client area.

## Requirements



| Requirement | Value |
|-------------------------------------|----------------------------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows Vista \[desktop apps only\]<br/>                                                           |
| Minimum supported server<br/> | Windows Server 2003 \[desktop apps only\]<br/>                                                     |
| Header<br/>                   | <dl> <dt>Winuser.h (include Windows.h)</dt> </dl> |



## See also

<dl> <dt>

[**MAKELPARAM**](/windows/desktop/api/winuser/nf-winuser-makelparam)
</dt> </dl>

**Header:** Winuser.h
