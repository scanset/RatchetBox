# _variant_t Extractors

**Microsoft Specific**

Extract data from the encapsulated `VARIANT` object.

## Syntax

```
operator short( ) const;
operator long( ) const;
operator float( ) const;
operator double( ) const;
operator CY( ) const;
operator _bstr_t( ) const;
operator IDispatch*( ) const;
operator bool( ) const;
operator IUnknown*( ) const;
operator DECIMAL( ) const;
operator BYTE( ) const;
operator VARIANT() const throw();
operator char() const;
operator unsigned short() const;
operator unsigned long() const;
operator int() const;
operator unsigned int() const;
operator __int64() const;
operator unsigned __int64() const;
```

## Remarks

Extracts raw data from an encapsulated `VARIANT`. If the `VARIANT` is not already the proper type, `VariantChangeType` is used to attempt a conversion, and an error is generated upon failure:

- **operator short( )** Extracts a **`short`** integer value.

- **operator long( )** Extracts a **`long`** integer value.

- **operator float( )** Extracts a **`float`** numerical value.

- **operator double( )** Extracts a **`double`** integer value.

- **operator CY( )** Extracts a `CY` object.

- **operator bool( )** Extracts a **`bool`** value.

- **operator DECIMAL( )** Extracts a `DECIMAL` value.

- **operator BYTE( )** Extracts a `BYTE` value.

- **operator _bstr_t( )** Extracts a string, which is encapsulated in a `_bstr_t` object.

- **operator IDispatch\*( )** Extracts a dispinterface pointer from an encapsulated `VARIANT`. `AddRef` is called on the resulting pointer, so it is up to you to call `Release` to free it.

- **operator IUnknown\*( )** Extracts a COM interface pointer from an encapsulated `VARIANT`. `AddRef` is called on the resulting pointer, so it is up to you to call `Release` to free it.

**END Microsoft Specific**

## See also

[_variant_t Class](../cpp/variant-t-class.md)