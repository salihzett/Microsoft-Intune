#!/bin/bash
#set -x

############################################################################################
##
## Extension Attribute script to return all local users
##
############################################################################################

showusers=$(dscl . list /Users | grep -v "^_" | grep -v "daemon" | grep -v "nobody" | grep -v "root")
echo $showusers
