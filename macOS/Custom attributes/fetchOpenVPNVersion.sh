#!/bin/bash
#set -x

############################################################################################
##
## Extension Attribute script to return the version of an installed App
##
############################################################################################

# User Defined variables
app="OpenVPN Connect.app"

# Fixed Variables
attribute="CFBundleShortVersionString"
InfoPlistPath="/Applications/$app/Contents/Info.plist"

# Attempt to read CFBundleStringShortVersionString and return it
if [[ -f "$InfoPlistPath" ]]; then
ver=$(plutil -p "$InfoPlistPath" | grep "$attribute" | awk -F'"' '{ print $4 }')
    echo $ver
else
    echo "not installed"
fi
