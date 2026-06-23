# D3DDEVINFO\_RESOURCEMANAGER structure

Resource usage statistics.

## Syntax


```C++
typedef struct _D3DDEVINFO_RESOURCEMANAGER {
  D3DRESOURCESTATS stats[D3DRTYPECOUNT];
} D3DDEVINFO_RESOURCEMANAGER, *LPD3DDEVINFO_RESOURCEMANAGER;

```



## Members

<dl> <dt>

**stats**
</dt> <dd>

Type: **[**D3DRESOURCESTATS**](d3dresourcestats.md)**

</dd> <dd>

Array of resource statistics elements. See [**D3DRESOURCESTATS**](d3dresourcestats.md).

</dd> </dl>

## Remarks

D3DRTYPECOUNT refers to the number of enumerations in [**D3DRESOURCETYPE**](./d3dresourcetype.md).

## Requirements



| Requirement | Value |
|-------------------|----------------------------------------------------------------------------------------|
| Header<br/> | <dl> <dt>D3D9Types.h</dt> </dl> |



## See also

<dl> <dt>

[Direct3D Structures](dx9-graphics-reference-d3d-structures.md)
</dt> </dl>

**Header:** D3D9Types.h
