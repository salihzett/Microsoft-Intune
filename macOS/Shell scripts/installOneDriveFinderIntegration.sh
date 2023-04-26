#!/bin/sh

echo "$(date) | Setup OneDrive FinderAddon"

/usr/bin/pluginkit -e use -i com.microsoft.OneDrive-mac.FileProvider
/usr/bin/pluginkit -e use -i com.microsoft.OneDrive-mac.FinderSync

exit 0		## Success
exit 1		## Failure
