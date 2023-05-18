#!/bin/bash

###############################################################################
echo 
echo "This scripts shows how use recursions in a functions in Linux"
echo 
###############################################################################

# run script: './6-create-function-recursion.sh' and enter 5 as a value

function factorial {
    if [ $1 -eq 1 ]
    then
        echo 1
    else 
        local temp=$[ $1 - 1 ]
        local result=$(factorial $temp)
        echo $[ $result * $1 ]
        echo
    fi
}

read -p "Enter value: " value 
result=$(factorial $value)
echo "The factorial of $value is: $result"
echo