# How to: Build Registration-Free COM Components

Registration-free COM components are COM components that have manifests built into the DLLs.

### To build manifests into COM components

1. Open the project property pages for the COM component.

1. Expand the **Configuration Properties** node, and then expand the **Manifest Tool** node.

1. Select the **Input and Output** property page, and then set the **Embed Manifest** property equal to **Yes**.

1. Click **OK**.

1. Build the solution.

## See also

[How to: Build Isolated Applications to Consume COM Components](how-to-build-isolated-applications-to-consume-com-components.md)