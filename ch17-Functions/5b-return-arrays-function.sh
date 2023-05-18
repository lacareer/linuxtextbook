#!/bin/bash

###############################################################################
echo 
echo "This scripts shows how to return arrays from a functions in Linux"
echo 
###############################################################################

function arraydblr {
    local origarray
    local newarray
    local element
    local i 
    # creating arrays from passed arrays using  command substitution
    origarray=($(echo "$@"))
    newarray=($(echo "$@"))
    elements=$[ $# - 1 ]

    echo "Received array items: ${newarray[*]}"
    echo

    for (( i = 0; i <= $elements; i++ ))
    {
        # creates new array item
        newarray[$i]=$[ ${origarray[$i]} * 2 ]
    }

    echo ${newarray[*]}
    echo

}

myarray=(1 2 3 4 5)
echo "The original array is ${myarray[*]}"
echo 
result=$(arraydblr ${myarray[*]})
echo "The result from function is: $result"
echo