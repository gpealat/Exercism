#!/usr/bin/env bash

# Storing the argument length as we will need it later
length=${#1}
string=$1

# Testing for empty string
if [[ "$length" == 0 ]];then
    # Returning nothing if the first argument is empty
    echo ""
    exit
fi

# Creating the resulting string
reversed=""

# Looping in reverse
for (( i=$(( "$length"-1 ));i>=0;i-- ));do
    #Concatenating the string for the result
    reversed="$reversed"${string:i:1}    
done

echo "$reversed"
