# XMUINT4 structure

Describes an 4D unsigned integer vector.

## Syntax


``` syntax
typedef struct _XMUINT4 {
  UINT x;
  UINT {
    UINT {
      UINT w;
    }z;
  }y;
} XMUINT4;
```



## Members

<dl> <dt>

**x**
</dt> <dd>

x-component of the vector.

</dd> <dt>

**y**
</dt> <dd>

y-component of the vector.

<dl> <dt>

**z**
</dt> <dd>

z-component of the vector.

<dl> <dt>

**w**
</dt> <dd>

w-component of the vector.

</dd> </dl> </dd> </dl> </dd> </dl>




## Remarks

This structure is defined in the ``D3DX\_DXGIFormatConvert.inl`` header in the DirectX SDK (June 2010) for use from C++. The latest version of this header in the [Microsoft.DXSDK.D3DX](https://www.nuget.org/packages/Microsoft.DXSDK.D3DX) NuGet Package no longer defines it, and relies on [DirectX::XMUINT4](/windows/win32/api/directxmath/ns-directxmath-xmuint4) in DirectXMath instead.




## Requirements



| Requirement | Value |
|-------------------|--------------------------------------------------------------------------------------------------------|
| Header<br/> | <dl> <dt>D3DX\_DXGIFormatConvert.inl</dt> </dl> |



## See also

<dl> <dt>

[Structures](format-conversion-structures.md)
</dt> <dt>

[Unpacking and Packing DXGI\_FORMAT for In-Place Image Editing](dx-graphics-hlsl-unpacking-packing-dxgi-format.md)
</dt> </dl>