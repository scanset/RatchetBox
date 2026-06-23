# EM\_SETSTORYTYPE message

Sets the story type.


```C++
#define EM_SETSTORYTYPE       (WM_USER + 291)
```



## Parameters

<dl> <dt>

*wParam* 
</dt> <dd>

The story index.

</dd> <dt>

*lParam* 
</dt> <dd>

The new story type. For a list of story types, see [**EM\_GETSTORYTYPE**](em-getstorytype.md).

</dd> </dl>

## Return value

The story type that was set.

## Requirements



| Requirement | Value |
|-------------------------------------|---------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows 8 \[desktop apps only\]<br/>                                            |
| Minimum supported server<br/> | Windows Server 2012 \[desktop apps only\]<br/>                                  |
| Header<br/>                   | <dl> <dt>Richedit.h</dt> </dl> |

**Header:** Richedit.h
