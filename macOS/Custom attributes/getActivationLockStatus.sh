#!/bin/bash
#set -x

############################################################################################
##
## Extension Attribute script to return Status about Activation Lock
##
############################################################################################

lockstatus=$(/usr/sbin/system_profiler SPHardwareDataType | grep "Activation Lock Status:" | awk '{print $4}')

echo $lockstatus
