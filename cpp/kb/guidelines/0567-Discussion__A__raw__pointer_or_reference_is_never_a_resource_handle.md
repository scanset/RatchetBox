# Discussion: A "raw" pointer or reference is never a resource handle

##### Reason

To be able to distinguish owners from views.

##### Note

This is independent of how you "spell" pointer: `T*`, `T&`, `Ptr<T>` and `Range<T>` are not owners.
