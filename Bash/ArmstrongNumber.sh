#!/usr/bin/env bash

# Define an array as we want to split the input number by characters
array=()
# Store the parameter to a string
number_str="$1"

# Split the string in the array of single numbers
for (( i=0; i < ${#number_str}; i++ ));do
    array+=("${number_str:i:1}")
done

# Get the array size
array_size="${#array[@]}"

# Set the result variable to 0
result=0

## now loop through the above array
for i in "${array[@]}"
do
    # For each number, do the calculation number ^ array size
    result=$(( "$result" + "$i" ** "$array_size" ))
done

# If the result is the same as the parameter we have an Armstrong number
if [[ "$1" -eq "$result" ]];then
    echo "true"
else
# Else this is not an Armstrong number
    echo "false"
fi
