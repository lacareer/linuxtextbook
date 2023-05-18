#!/bin/bash

###############################################################################
echo 
echo "This scripts shows how import a function or library into a in Linux"
echo 
###############################################################################

# Importing a function
source ./mylibrary # or the shorthand syntax below
# . ./mylibrary

value1=10
value2=5

result1=$(addem $value1 $value2)
result2=$(multem $value1 $value2)
result3=$(divem $value1 $value2)

echo "The result of $value1 + $value2 = $result1"
echo

echo "The result of $value1 * $value2 = $result2"
echo

echo "The result of $value1 / $value2 = $result3"
echo