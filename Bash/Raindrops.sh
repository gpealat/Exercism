#!/usr/bin/env bash

# Function to generate the sound depending on the divisibility
sound_generation(){
    # The number is passed in argument 1
    # The divisor is passed in argument 2
    number=$1
    divisor=$2
    ! ((  "$number" % "$divisor"  == 0 ))

}


# Creating an array to store the sounds
sounds=([3]='Pling' [5]='Plang' [7]='Plong')

# Check the sound for different divisor
i=0
for divisor in "${!sounds[@]}"; do
    sound_generation "$1" "$divisor"
    sound=$?

    # If the sound have to be generated
    if [[ sound -eq 1 ]]; then
        factor+=${sounds[$divisor]}

    fi
    i="$i"+1
done

# Check if the result is empty (meaning it is not divisible by any number asked) - Using the default parameter in the Parameter expansion
echo ${factor:-"$1"}

