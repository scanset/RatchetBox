# Processing Codec MFT Input and Output

When you have configured the input type and output type for an MFT, you can begin processing data samples. You pass samples to the MFT for processing by using the [**IMFTransform::ProcessInput**](/windows/desktop/api/mftransform/nf-mftransform-imftransform-processinput) method, and then retrieve the processed sample by calling [**IMFTransform::ProcessOutput**](/windows/desktop/api/mftransform/nf-mftransform-imftransform-processoutput). You should set accurate time stamps and durations for all input samples passed. Time stamps are not strictly required but help maintain audio/video synchronization. If you do not have the time stamps for your samples it is better to leave them out than to use uncertain values.

## Related topics

<dl> <dt>

[Working with Codec MFTs](workingwithcodecmfts.md)
</dt> </dl>

 

 


