# `_amsg_exit`

Emits a specified runtime error message and then exits your application with error code 255.

## Syntax

```cpp
void _amsg_exit ( int rterrnum );
```

### Parameters

*`rterrnum`*\
The identification number of a system-defined runtime error message.

## Remarks

This function emits the runtime error message to `stderr` for console applications, or displays the message in a message box for Windows applications. In debug mode, you can choose to invoke the debugger before exiting.

## Requirements

| Routine | Required header |
|---|---|
| _amsg_exit | internal.h |