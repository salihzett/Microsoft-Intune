#!/bin/bash
#set -x

############################################################################################
##
## Extension Attribute script to return uptime of the Mac
##
############################################################################################

uptime=$(/usr/bin/uptime)

echo $uptime
