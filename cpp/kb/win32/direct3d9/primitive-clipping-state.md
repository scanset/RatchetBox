# Primitive Clipping State (Direct3D 9)

Primitives that lie partially inside (or completely outside) the [view frustum](viewports-and-clipping.md) can be clipped so that only the visible portion of the primitive will be rendered. Clipping reduces the amount of work that is done to only those primitives or portions of a primitive that will be visible.

To use the pipeline for clipping, set the D3DRS\_CLIPPING render state to **TRUE** (the default value) to enable clipping, or to **FALSE** to disable Direct3D clipping.

## Related topics

<dl> <dt>

[Render States](render-states.md)
</dt> </dl>

 

 


