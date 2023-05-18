#!/bin/bash

###############################################################################
echo 
echo "This scripts shows how to use the 'return' keyword to exit a functions in Linux"
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
# (1) 20 (should return the correct value because last line with return statement has value between 0-255)
# (2) 200 (should return a wrong value, only the first number(1) in the result(144 [which is 400-256])
#  return because last line with return statement has value not between 0-255)

function db1 {
    read -p "Please enter a number value: " value
    echo "Doubling the value of the number you entered"
    return $[ $value * 2 ]
}

db1
echo "THe new value is $?"
echo