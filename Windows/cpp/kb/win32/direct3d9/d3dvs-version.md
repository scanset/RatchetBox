# D3DVS\_VERSION macro

Create a vertex shader version number token.

## Syntax


```C++
DWORD D3DVS_VERSION(
   int _Major,
   int _Minor
);
```



## Parameters

<dl> <dt>

*\_Major* 
</dt> <dd>

The major vertex shader version. See remarks for appropriate values.

</dd> <dt>

*\_Minor* 
</dt> <dd>

The minor vertex shader version. See remarks for appropriate values.

</dd> </dl>

## Return value

Returns a DWORD value that is a vertex shader version.

## Remarks

Version Numbers

The version number is a combination of the major version and the minor vertex shader version numbers. Valid numbers are shown in the table.



| Major | Minor | Example             |
|-------|-------|---------------------|
| 1     | 1     | D3DVS\_VERSION(1,1) |
| 2     | 0     | D3DVS\_VERSION(2,0) |
| 3     | 0     | D3DVS\_VERSION(3,0) |



 

## Requirements



| Requirement | Value |
|-------------------|----------------------------------------------------------------------------------------|
| Header<br/> | <dl> <dt>D3d9types.h</dt> </dl> |



## See also

<dl> <dt>

[Macros](dx9-graphics-reference-d3d-macros.md)
</dt> </dl>

**Header:** D3d9types.h
