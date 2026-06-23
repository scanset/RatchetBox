# `__set_app_type`

Sets the current application type. This internal function is obsolete.

## Syntax

```cpp
void __set_app_type (
   int at
   )
```

### Parameters

*`at`*\
A value that indicates the application type. The possible values are:

| Value | Description |
|---|---|
| `_UNKNOWN_APP` | Unknown application type. |
| `_CONSOLE_APP` | Console (command-line) application. |
| `_GUI_APP` | GUI (Windows) application. |

## Requirements

| Routine | Required header |
|---|---|
| **`__set_app_type`** | `internal.h` |