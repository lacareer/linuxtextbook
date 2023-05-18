#!/bin/bash

###############################################################################
echo 
echo "This scripts shows how best to return output in functions using 'echo'"
echo 
###############################################################################

# Two points to take note of and not forget when using the 'return' keyword
# 1. Remember to retrieve the return value as soon as the function completes
# 2. Remember that an exit status must be in the range of 0-255.
# Any value over that returns an error value(wrong math operation, as shown in below)
# After the function executes, you can use the standard '$?' variable to determine the 
# exit status of the function

# Run the script twice using, as an example, the values below
# /NOTE: Enter this value:
# (1) 200
# (2) 1000
#  Both values returns the right value and exit status of 0, from the function using 'echo' as shown below

function db1 {
    read -p "Please enter a number value: " value
    echo "Doubling the value of the number you entered"
    echo $[ $value * 2 ]
}

result=$(db1)
echo "The exit status of function last line is: $?"
echo
echo "The new value returned from the function is: $result"
echo