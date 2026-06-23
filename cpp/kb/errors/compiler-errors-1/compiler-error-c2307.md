# Compiler Error C2307

> pragma 'pragma' must be outside function if incremental compilation is enabled

## Remarks

You must place the `data_seg` pragma between functions if you're using incremental compilation.