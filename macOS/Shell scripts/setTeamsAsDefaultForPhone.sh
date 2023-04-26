#!/bin/bash
#set -x

echo ""
echo "##############################################################"
echo "# $(date) | Setting Microsoft Teams as default app for Facetime"
echo "############################################################"
echo ""

osascript -l JavaScript << EndOfScript
    ObjC.import("LaunchServices")
    $.LSSetDefaultHandlerForURLScheme(ObjC.wrap("tel"), ObjC.wrap("com.microsoft.teams"))
EndOfScript

exit 0		## Success
exit 1		## Failure
