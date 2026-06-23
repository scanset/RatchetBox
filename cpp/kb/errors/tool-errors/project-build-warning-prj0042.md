# Project Build Warning PRJ0042

> The 'Outputs' property for the custom build step for file '*file*' is not set. The custom build step will be skipped.

## Remarks

A custom build step was not executed because no output was specified.

To resolve this error, do one the following:

- Exclude the custom build step from the build.

- Add an output.

- Delete the contents of the custom build step's command.