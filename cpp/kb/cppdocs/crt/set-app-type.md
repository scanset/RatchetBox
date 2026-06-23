# `_set_app_type`

An internal function used at startup to tell the CRT whether the app is a console app or a GUI app.

## Syntax

```cpp
typedef enum _crt_app_type
{
    _crt_unknown_app,
    _crt_console_app,
    _crt_gui_app
} _crt_app_type;

void __cdecl _set_app_type(
    _crt_app_type appType
    );
```

## Parameters

*`appType`*\
A value that indicates the application type. The possible values are:

| Value | Description |
|---|---|
| `_crt_unknown_app` | Unknown application type. |
| `_crt_console_app` | Console (command-line) application. |
| `_crt_gui_app` | GUI (Windows) application. |

## Remarks

Normally, you don't need to call this function. It's part of the C runtime startup code that executes before `main` is called in your app.

By default, this function's global state is scoped to the application. To change this behavior, see [Global state in the CRT](global-state.md).

## Requirements

| Routine | Required header |
|---|---|
| **`_set_app_type`** | `<process.h>` |