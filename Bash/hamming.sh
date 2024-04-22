#!/usr/bin/env bash

# Checking we have 2 arguments
if [[ "$#" -ne 2 ]];then
    echo "Usage: hamming.sh <string1> <string2>"
    exit 1
fi

# Storing arguments into named variables
dna1=$1
dna2=$2

# Checking if for DNA strands are of the same length
if [[ ${#dna1} -ne ${#dna2} ]];then
    echo "strands must be of equal length"
    exit 1
fi

if [[ "$dna1" == "$dna2" ]];then
    # The strings are the same so the distance is 0
    echo 0
else
    # Strings are different so we need to calculate the distance
    distance=0

    # As we know that both strings have the same length we can loop on them
    for (( i=0;i<${#dna1};i++));do
        # Checking if both charater are different
        if [[ "${dna1:i:1}" != "${dna2:i:1}" ]];then
            # If they are different, increase the distance by 1
            distance=$(( "$distance" + 1 ))
        fi

    done
    # Return the distance
    echo "$distance"
fi
