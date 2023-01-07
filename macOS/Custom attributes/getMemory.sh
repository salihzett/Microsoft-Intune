#!/bin/bash
#set -x

############################################################################################
##
## Extension Attribute script to return the physical Memory
##
############################################################################################

memory=$(/usr/sbin/system_profiler SPHardwareDataType | egrep Memory)

echo $memory
