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

    # If this is divisible, emit the sound which is passed in argument 3
    if [[ "$divisible_by" == 1 ]]; then
        return 1
    fi

    # If it is not divisible, then return nothing (empty answer)
    return 0
}


# Creating an array to store the sounds
sounds=("Pling" "Plang" "Plong")

# Check the sound for different divisor
i=0
for divisor in 3 5 7; do
    sound_generation "$1" "$divisor"
    sound=$?

    # If the sound have to be generated
    if [[ sound -eq 1 ]]; then
        factor+=${sounds[$i]}
    fi
    i="$i"+1
done

# Check if the result is empty (meaning it is not divisible by any number asked)
if [[ -z "$factor" ]]
then
    # If this is empty, return the passed number
    echo "$1"
else
    # If this is not empty, return the sound
    echo "$factor"
fi

