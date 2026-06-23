# Patching Customized Applications

When installing a patch and one or more customization transforms to an application, the patch is typically installed first, followed by the customization transforms. By design, the patch is not broken by the subsequent installation of the customization. However, installing the transforms first, and then the patch, may break the customization.

For example, a break in the customization could occur when a patch is used to update a product from version 1 to version 2 and a customization transform that works for version 1 does not work for version 2. In this case, the version update patch cannot be applied to a customized product without first uninstalling and then reinstalling the original product.

 

 


