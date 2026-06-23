# SFVM\_MERGEMENU message

Allows the callback object to merge menu items into the Windows Explorer menus. Used by [**IShellFolderViewCB::MessageSFVCB**](/windows/win32/api/shlobj_core/nf-shlobj_core-ishellfolderviewcb-messagesfvcb).


```C++
SFVM_MERGEMENU 

    lParam = (LPARAM)(LPQCMINFO) pInfo;

            
```



## Parameters

<dl> <dt>

*pInfo* \[out\]
</dt> <dd>

A [**QCMINFO**](/windows/desktop/api/shlobj_core/ns-shlobj_core-qcminfo) structure containing the information needed to merge the items into the menu.

</dd> </dl>

## Remarks

This message serves essentially the same purpose as the [**IShellBrowser::InsertMenusSB**](/windows/win32/api/shobjidl_core/nf-shobjidl_core-ishellbrowser-insertmenussb) and [**IShellBrowser::SetMenuSB**](/windows/win32/api/shobjidl_core/nf-shobjidl_core-ishellbrowser-setmenusb) in a custom folder view. See the *Using IShellBrowser to Communicate with Windows Explorer* section of [Implementing a Folder View](../lwef/nse-folderview.md) for further discussion.

## Requirements



| Requirement | Value |
|-------------------------------------|-------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows 2000 Professional \[desktop apps only\]<br/>                          |
| Minimum supported server<br/> | Windows 2000 Server \[desktop apps only\]<br/>                                |
| Header<br/>                   | <dl> <dt>Shlobj.h</dt> </dl> |

**Header:** Shlobj.h
