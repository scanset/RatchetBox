# `_bstr_t::copy`

**Microsoft Specific**

Constructs a copy of the encapsulated `BSTR`.

## Syntax

```cpp
BSTR copy( bool fCopy = true ) const;
```

### Parameters

*`fCopy`*\
If **`true`**, **`copy`** returns a copy of the contained `BSTR`, otherwise **`copy`** returns the actual `BSTR`.

## Remarks

Returns a newly allocated copy of the encapsulated `BSTR` object, or the encapsulated object itself, depending on the parameter.

## Example

```cpp
STDMETHODIMP CAlertMsg::get_ConnectionStr(BSTR *pVal){ //  m_bsConStr is _bstr_t
   *pVal = m_bsConStr.copy();
}
```

**END Microsoft Specific**

## See also

[`_bstr_t` class](../cpp/bstr-t-class.md)