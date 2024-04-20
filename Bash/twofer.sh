#!/usr/bin/env bash
# Retrieving the first parameter
name=$1
# Checking if the parameter is passed to the script
if [ -z "$1" ];then
    name="you"
fi
# Return the result
echo "One for $name, one for me."
