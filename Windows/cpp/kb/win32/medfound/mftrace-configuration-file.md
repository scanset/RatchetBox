# MFTrace Configuration File

The [MFTrace](mftrace.md) tool can read an XML configuration file that specifies one or more trace providers.

The [**providers**](providers.md) element is the root element in the configuration file.

## In this section

-   [**keyword**](keyword.md)
-   [**mfdetours**](mfdetours.md)
-   [**provider**](provider.md)
-   [**providers**](providers.md)

## Example

``` syntax
<?xml version='1.0' encoding='utf-8'?>
<providers>
  <mfdetours level="info"> 
    <keyword ID="MFPlatExport" />
  </mfdetours>
  
  <!-- Manifest-based traces -->

  <provider level="verbose" ID="Microsoft-Windows-MediaFoundation-MFReadWrite">
    <keyword ID="0x0000000000000000" />
  </provider>

</providers>
```

## Related topics

<dl> <dt>

[MFTrace](mftrace.md)
</dt> </dl>

 

 


