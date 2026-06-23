# providers element

Contains a list of trace providers for [MFTrace](mftrace.md).

## Usage

``` syntax
<providers>
  child elements
</providers>
```

## Attributes

There are no attributes.

## Child elements



| Element                                   | Description                                                                                                      |
|-------------------------------------------|------------------------------------------------------------------------------------------------------------------|
| [**mfdetours**](mfdetours.md)<br/> | Specifies the Media Foundation Detours provider, which traces Media Foundation API calls.<br/> <br/> |
| [**provider**](provider.md)<br/>   | Specifies a trace provider (ETW or WPP).<br/> <br/>                                                  |



### Child element sequence

``` syntax
(
  mfdetours?, 
  provider*
)
```

## Parent elements

There are no parent elements.

## Element information

:::row:::
    :::column:::
        Can be empty
    :::column-end:::
    :::column span="2":::
        Yes
    :::column-end:::
:::row-end:::

## See also

<dl> <dt>

[MFTrace Configuration File](mftrace-configuration-file.md)
</dt> </dl>

 

 



