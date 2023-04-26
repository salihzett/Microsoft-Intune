#!/bin/bash

#########################################################################################
# Author:   Darren Wallace - Amsys (Updated by Salih Zengin)
# Name:     suppressUpdateCheckForVisualStudio.sh (orginal name)
#
# Purpose:  This script will a configuration file for Visual Studio to the 
#			currently logged in user's Application Support folder. 
#			The script will bail out if it detects 'root' or blank as the logged
#			in user.
#			Source: https://code.visualstudio.com/docs/supporting/FAQ#_how-do-i-opt-out-of-vs-code-autoupdates
# Usage:    CLI | Jamf Pro
#
# Version 2017.12.29 - DW - Initial Creation
#
# Version 2023.04.26 - Salih Zengin - new Version with update.mode and telemetry.telemetryLevel, loggedInUser without Python
#
#########################################################################################

##################################### Set variables #####################################

# Name of the script
scriptName="suppressUpdateCheckandDisableTelemetrieForVisualStudio.sh"
# Name of the file
fileName="settings.json"
# Work out the currently logged in user
loggedInUser=$( echo "show State:/Users/ConsoleUser" | scutil | awk '/Name :/ { print $3 }' )
# Work out the final destination for the file
# This next line works out the user's home, even if working direct from a network volume (yuk)
eval usersNetworkHome="~${loggedInUser}"
# Path to the Directory
directoryPath="${usersNetworkHome}/Library/Application Support/Code/User"
# Final full path
finalLocation="${directoryPath}/${fileName}"

##################################### Run Script #######################################

	/bin/echo "$(date) Starting script: ${scriptName}"

# Check if the current user is 'root' or blank	
	if [[ "${loggedInUser}" == "root" ]]; then
# Current user detected as root so we will exit
		/bin/echo "$(date) Current user detected as 'root', bailing out..."
		exit 0
	elif [[ "${loggedInUser}" == "" ]]; then
# Current user detected as blank so we will exit
		/bin/echo "$(date) Current user detected as blank, bailing out..."
		exit 0
	fi

# Current user detected correctly, so off we go
	/bin/echo "$(date) Saving file to: ${finalLocation}"

# Create the directory if required
	if [[ -d "${directoryPath}" ]]; then
		/bin/echo "$(date) Directory already present, skipping"
	else
		/bin/echo "$(date) Directory not found, creating..."
		/bin/mkdir -p "${directoryPath}"
		/usr/sbin/chown -R "${loggedInUser}" "${usersNetworkHome}/Library/Application Support/Code"
	fi

# Create the final file
	/bin/echo "$(date) Writing the file in place"

	/bin/echo "
	{
    \"update.mode\": \"none\",
	  \"telemetry.telemetryLevel\": \"off\"
	}
	" > "${finalLocation}"

# Permission the file correctly
	/usr/sbin/chown "${loggedInUser}" "${finalLocation}"
	
	/bin/echo "$(date) Script complete"

##################################### End Script #######################################
