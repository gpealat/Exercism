#!/usr/bin/env bash

# Storing the argument length as we will need it later
length=${#1}
string=$1

# Creating the resulting string
reversed=""

# Looping in reverse
for (( i= "$length"-1; i>=0; i-- ));do
    #Concatenating the string for the result
    reversed+="${string:i:1}"    
done

echo "$reversed"
