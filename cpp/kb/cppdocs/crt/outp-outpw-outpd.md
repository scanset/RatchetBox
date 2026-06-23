# `outp`, `outpw`, `_outp`, `_outpw`, `_outpd`

Outputs, at a port, a byte (**`outp`**, **`_outp`**), a word (**`outpw`**, **`_outpw`**), or a double word (**`_outpd`**).

> [!IMPORTANT]
> These functions are obsolete. Beginning in Visual Studio 2015, they are not available in the CRT.\
> This API cannot be used in applications that execute in the Windows Runtime. For more information, see [CRT functions not supported in Universal Windows Platform apps](../cppcx/crt-functions-not-supported-in-universal-windows-platform-apps.md).

## Syntax

```cpp
int _outp(
   unsigned short port,
   int data_byte
);
unsigned short _outpw(
   unsigned short port,
   unsigned short data_word
);
unsigned long _outpd(
   unsigned short port,
   unsigned long data_word
);
```

### Parameters

*`port`*\
Port number.

*`data_byte`*, *`data_word`*\
Output values.

## Return value

The functions return the data output. There's no error return.

## Remarks

The **`_outp`**, **`_outpw`**, and **`_outpd`** functions write a byte, a word, and a double word, respectively, to the specified output port. The *`port`* argument can be any unsigned integer in the range 0 - 65,535. *`data_byte`* can be any integer in the range 0 - 255. *`data_word`* can be any value in the range of an integer, an unsigned short integer, and an unsigned long integer, respectively.

Because these functions write directly to an I/O port, they can't be used in user-mode Windows code.

For information about using I/O ports in the Windows operating system, see [Serial communications](/previous-versions/ff802693(v=msdn.10)).

The **`outp`** and **`outpw`** names are older, deprecated names for the **`_outp`** and **`_outpw`** functions. For more information, see [POSIX function names](../error-messages/compiler-warnings/compiler-warning-level-3-c4996.md#posix-function-names).

## Requirements

| Routine | Required header |
|---|---|
| **`_outp`** | \<conio.h> |
| **`_outpw`** | \<conio.h> |
| **`_outpd`** | \<conio.h> |

For more compatibility information, see [Compatibility](./compatibility.md).

## Libraries

All versions of the [C run-time libraries](./crt-library-features.md).

## See also

[Console and port I/O](./console-and-port-i-o.md)\
[`inp`, `inpw`, `_inp`, `_inpw`, `_inpd`](./inp-inpw-inpd.md)