#!/bin/sh

echo ""
echo "##############################################################"
echo "# $(date) | Setup OneDrive FinderAddon"
echo "############################################################"
echo ""

/usr/bin/pluginkit -e use -i com.microsoft.OneDrive-mac.FileProvider
/usr/bin/pluginkit -e use -i com.microsoft.OneDrive-mac.FinderSync

exit 0		## Success
exit 1		## Failure
