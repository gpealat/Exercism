#!/usr/bin/env bash

# Create a function to check if the number is divisible by a certain value (the divisor)
divisible(){

    number=$1
    divisor=$2

    if [[ $(( "$number" % "$divisor" )) == 0 ]]
    then
        # If this is divisible, then return true
        return 1
    else
        # If not return false
        return 0
    fi
    
}

# Function to generate the sound depending on the divisibility
sound_generation(){
    # The number is passed in argument 1
    # The divisor is passed in argument 2
    divisible "$1" "$2"
    divisible_by=$?

    # If this is divisible, return 1
    if [[ "$divisible_by" == 1 ]]; then
        return 1
    fi

    # If it is not divisible, then return nothing (empty answer)
    return 0
}

# Check the sound for different divisor
sound_generation "$1" 3
sound=$?

if [[ "$sound" -eq 1 ]]; then
    factor="Pling"
fi

sound_generation "$1" 5
sound=$?

if [[ "$sound" -eq 1 ]]; then
    factor="$factor""Plang"
fi

sound_generation "$1" 7
sound=$?

if [[ "$sound" -eq 1 ]]; then
    factor="$factor""Plong"
fi

# Check if the result is empty (meaning it is not divisible by any number asked)
if [[ -z "$factor" ]]
then
    # If this is empty, return the passed number
    echo "$1"
else
    # If this is not empty, return the sound
    echo "$factor"
fi
