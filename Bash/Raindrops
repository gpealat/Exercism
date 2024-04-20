#!/usr/bin/env bash

# Create a function to check if the number is divisible by a certain value (the divisor)
divisible(){

    number=$1
    divisor=$2

    if [ $(($number%$divisor)) -eq 0 ]
    then
        # If this is divisible, then return true
        echo 1
    else
        # If not return false
        echo 0
    fi
    
}

# Function to generate the sound depending on the divisibility
sound_generation(){
    # The number is passed in argument 1
    # The divisor is passed in argument 2
    divisible_by=$(divisible $1 $2)

    # If this is divisible, emit the sound which is passed in argument 3
    if [ $divisible_by -eq 1 ]; then
        echo $3
    fi

    # If it is not divisible, then return nothing (empty answer)
}

# Check the sound for different divisor
factor3=$(sound_generation $1 3 "Pling")
factor5=$(sound_generation $1 5 "Plang")
factor7=$(sound_generation $1 7 "Plong")

# Concatenate the answers
concat=${factor3}${factor5}${factor7}

# Check if the result is empty (meaning it is not divisible by any number asked)
if [ -z "$concat" ]
then
    # If this is empty, return the passed number
    echo $1
else
    # If this is not empty, return the sound
    echo $concat
fi

