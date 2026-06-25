# Miss shader

A shader that's invoked when no ray intersections are found or accepted. This is useful for background or sky shading. The miss shader may use [**CallShader**](callshader-function.md) and **TraceRay** in order to schedule more work.

The miss shader must include a user-defined structure typed payload parameter matching the one supplied to [**TraceRay**](traceray-function.md).

## Shader Type attribute

```
[shader("miss")]
```

## Example

```
[shader("miss")]
void miss_main(inout MyPayload payload)
{
    // Use ray system values to compute contributions of background, sky, etc...
    // Combine contributions into ray payload
    CallShader( ... );	// if desired
    TraceRay( ... );	// if desired
    // this ray query is now complete
}
```