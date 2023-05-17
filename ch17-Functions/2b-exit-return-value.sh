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
# /NOTE: Enter this value, 20 and 200, when  you run the script