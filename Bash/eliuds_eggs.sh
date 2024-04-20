#!/usr/bin/env bash
# Define the euclidian division algorithm
euclid(){
    # Define the parameter
    eggs_in_decimal=$1
    remain=$(($eggs_in_decimal%2))
    i=0
    while [ $eggs_in_decimal -ne $remain ];
    do
        if [ $remain -eq 1 ];then
            i=$(($i+1))
            eggs_in_decimal=$(($eggs_in_decimal-1))
        fi
        eggs_in_decimal=$(($eggs_in_decimal/2))
        remain=$(($eggs_in_decimal%2))
    done
    if [ $remain -eq 1 ];then
       i=$(($i+1))
    fi
    return $i
}
# Getting the parameters in decimal
eggs=$1
# Calling the Euclidian division
euclid $eggs
# Storing the result in a variable
test=$?
# Outputing the result
echo $test
