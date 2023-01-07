#!/bin/bash
#set -x

############################################################################################
##
## Extension Attribute script to return the Apple Model
##
############################################################################################

model=$(sysctl hw.model | awk '{ print $2 }')

echo $model
