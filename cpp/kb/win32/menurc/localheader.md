# LOCALHEADER structure

Contains the x- and y-coordinates of a hotspot associated with the cursor identified by a [**RESDIR**](resdir.md) structure. The structure definition provided here is for explanation only; it is not present in any standard header file.

## Syntax


```C++
typedef struct {
  WORD xHotSpot;
  WORD yHotSpot;
} LOCALHEADER;
```



## Members

<dl> <dt>

**xHotSpot**
</dt> <dd>

Type: **WORD**

</dd> <dd>

The x-coordinate of the cursor hot spot, in pixels.

</dd> <dt>

**yHotSpot**
</dt> <dd>

Type: **WORD**

</dd> <dd>

The y-coordinate of the cursor hot spot, in pixels.

</dd> </dl>

## Remarks

The **LOCALHEADER** structure is the first data written to the [RT\_CURSOR](/windows/desktop/menurc/resource-types) resource if a [**RESDIR**](resdir.md) structure contains information about a cursor.

## Requirements



| Requirement | Value |
|-------------------------------------|------------------------------------------------------------|
| Minimum supported client<br/> | Windows 2000 Professional \[desktop apps only\]<br/> |
| Minimum supported server<br/> | Windows 2000 Server \[desktop apps only\]<br/>       |



## See also

<dl> <dt>

**Reference**
</dt> <dt>

[**CURSORDIR**](cursordir.md)
</dt> <dt>

[**RESDIR**](resdir.md)
</dt> <dt>

**Conceptual**
</dt> <dt>

[Resources](resources.md)
</dt> </dl>

 
