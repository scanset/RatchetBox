# Configuring Video Decoding (Microsoft Media Foundation)

Decoding is essentially the opposite of encoding in terms of configuration. The decoder supports very few properties, and none of them is required. Set the input type to the type used for the decoder output (including the codec private data). Then set the output to the desired uncompressed format, set the [**VIDEOINFOHEADER**](/previous-versions/windows/desktop/api/amvideo/ns-amvideo-videoinfoheader) structure to reflect the proper frame size, and start processing samples.

You must supply the decoder with a media type that includes the codec private data positioned immediately after the [**VIDEOINFOHEADER**](/previous-versions/windows/desktop/api/amvideo/ns-amvideo-videoinfoheader) structure. The decoder cannot decode the content without this data. The format validation performed by the decoder does not validate the private data. If the codec private data is missing or incorrect, the decoder responds as if the bit stream is corrupted. For more information, see [Using Video Codec Private Data](usingvideocodecprivatedata.md).

## Related topics

<dl> <dt>

[Using Video Codec Private Data](usingvideocodecprivatedata.md)
</dt> <dt>

[Working with Video](workingwithvideo.md)
</dt> </dl>

 

 