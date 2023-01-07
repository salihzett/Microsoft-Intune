#!/bin/bash
#set -x

############################################################################################
##
## Extension Attribute script to return Battery Condition
##
############################################################################################

batteryhealth=$(system_profiler SPPowerDataType | grep "Condition" | awk '{print $2}'	)

echo $batteryhealth
