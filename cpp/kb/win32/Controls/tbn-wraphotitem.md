# TBN\_WRAPHOTITEM notification code

Notifies an application with two or more toolbars that the hot item is about to change. This notification code is sent in the form of a [**WM\_NOTIFY**](wm-notify.md) message.


```C++
TBN_WRAPHOTITEM

    lpnmtb = (NMTBWRAPHOTITEM) lParam; 
```



## Parameters

<dl> <dt>

*lParam* 
</dt> <dd>

A pointer to a structure that contains the old hot item (**iStart**) and whether the new hot item is before it (**iDir** = -1) or after it (**iDir** = 1), as well as a reason why the hot item is changing.

</dd> </dl>

## Return value

**TRUE** if the application is handling the hot item change itself; otherwise **FALSE**.

## Remarks

The **NMTBWRAPHOTITEM** structure must be defined by the application as follows:

``` syntax
typedef struct tagNMTBWRAPHOTITEM {
    NMHDR hdr;
    int iStart;
    int iDir;
    UINT nReason;       // HICF_* flags
} NMTBWRAPHOTITEM, *LPNMTBWRAPHOTITEM;
```

## Requirements



| Requirement | Value |
|-------------------------------------|---------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows Vista \[desktop apps only\]<br/>                                        |
| Minimum supported server<br/> | Windows Server 2003 \[desktop apps only\]<br/>                                  |
| Header<br/>                   | <dl> <dt>Commctrl.h</dt> </dl> |

**Header:** Commctrl.h
