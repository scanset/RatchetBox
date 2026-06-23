# mfdetours element

Specifies the Microsoft Media Foundation Detours provider, which traces Media Foundation API calls.

## Usage

``` syntax
<mfdetours
  level = "CDATA">
  child elements
</mfdetours>
```

## Attributes



| Attribute            | Type             | Required       | Description                             |
|----------------------|------------------|----------------|-----------------------------------------|
| **level**<br/> | CDATA<br/> | Yes<br/> | The trace level.<br/> <br/> |



## Child elements



| Element                               |
|---------------------------------------|
| [**keyword**](keyword.md)<br/> |



### Child element sequence

``` syntax
keyword+
```

## Parent elements

| Element                                   |
|-------------------------------------------|
| [**providers**](providers.md)<br/> |



## Element information

:::row:::
    :::column:::
        Can be empty
    :::column-end:::
    :::column span="2":::
        No
    :::column-end:::
:::row-end:::

## See also

<dl> <dt>

[MFTrace Configuration File](mftrace-configuration-file.md)
</dt> </dl>

 

 



