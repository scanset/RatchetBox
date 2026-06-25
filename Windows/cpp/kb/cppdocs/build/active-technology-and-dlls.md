# Active Technology and DLLs

Active technology allows object servers to be completely implemented inside a DLL. This type of server is called an in-process server. MFC does not completely support in-process servers for all the features of visual editing, mainly because Active technology does not provide a way for a server to hook into the container's main message loop. MFC requires access to the container application's message loop to handle accelerator keys and idle-time processing.

If you are writing an Automation server and your server has no user interface, you can make your server an in-process server and put it completely into a DLL.

## What do you want to know more about?

- [Automation Servers](../mfc/automation-servers.md)

## See also

[Create C/C++ DLLs in Visual Studio](dlls-in-visual-cpp.md)