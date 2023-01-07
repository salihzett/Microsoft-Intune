#!/bin/bash
#set -x

############################################################################################
##
## Extension Attribute script to return Maximum Capacity of the Battery
##
############################################################################################

maximumcapacity=$(system_profiler SPPowerDataType | grep "Maximum Capacity"	)

echo $maximumcapacity
