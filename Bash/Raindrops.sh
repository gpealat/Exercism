#!/usr/bin/env bash
# Creating an array to store the sounds
sounds=([3]='Pling' [5]='Plang' [7]='Plong')
# Check the sound for different divisor
i=0
for divisor in "${!sounds[@]}"; do
    ! ((  "$1" % "$divisor"  == 0 ))
    sound=$?
    # If the sound have to be generated
    if [[ sound -eq 1 ]]; then
        factor+=${sounds[$divisor]}
    fi
    i="$i"+1
done
# Check if the result is empty (meaning it is not divisible by any number asked) - Using the default parameter in the Parameter expansion
echo "${factor:-"$1"}"
