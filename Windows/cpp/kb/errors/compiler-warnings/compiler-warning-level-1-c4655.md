# Compiler Warning (level 1) C4655

> '*symbol*' : variable type is new since the last build, or is defined differently elsewhere

## Remarks

You changed or added a new data type since the last successful build. Edit and Continue does not support changes to existing data types.

This warning is followed by a [Fatal Error C1092](../../error-messages/compiler-errors-1/fatal-error-c1092.md). For further information, see the [Supported Code Changes](/visualstudio/debugger/supported-code-changes-cpp).

### To remove this warning without ending the current debug session

1. Change the data type back to its state prior to the error.

2. From the **Debug** menu, choose **Apply Code Changes**.

### To remove this warning without changing your source code

1. From the **Debug** menu, choose **Stop Debugging**.

2. From the **Build** menu, choose **Build**.