#!/bin/bash
#set -x

############################################################################################
##
## Extension Attribute script to return Battery Cycle Count
##
############################################################################################

battery=$(system_profiler SPPowerDataType | grep "Cycle Count" | awk '{print $3}')

echo $battery
