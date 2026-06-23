# MENUHELPID structure

Contains the final data written to the [**RT\_MENU**](/windows/desktop/menurc/resource-types) resource for a menu or submenu if the **resInfo** member of the [**POPUPMENUITEM**](popupmenuitem.md) structure is set to **MFR\_POPUP**. The structure definition provided here is for explanation only; it is not present in any standard header file.

## Syntax


```C++
typedef struct {
  DWORD helpID;
} MENUHELPID;
```



## Members

<dl> <dt>

**helpID**
</dt> <dd>

Type: **DWORD**

</dd> <dd>

The identifier used to identify the menu during [**WM\_HELP**](/windows/desktop/shell/wm-help) processing.

</dd> </dl>

## Requirements



| Requirement | Value |
|-------------------------------------|------------------------------------------------------------|
| Minimum supported client<br/> | Windows 2000 Professional \[desktop apps only\]<br/> |
| Minimum supported server<br/> | Windows 2000 Server \[desktop apps only\]<br/>       |



## See also

<dl> <dt>

**Reference**
</dt> <dt>

[**MENUHEADER**](menuheader.md)
</dt> <dt>

[**POPUPMENUITEM**](popupmenuitem.md)
</dt> <dt>

**Conceptual**
</dt> <dt>

[Resources](resources.md)
</dt> </dl>

 
