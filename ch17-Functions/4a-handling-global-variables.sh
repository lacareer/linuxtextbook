#!/bin/bash

###############################################################################
echo 
echo "This scripts shows how global variables works in a functions in Linux"
echo 
###############################################################################

# GLobal variables are valid anywhere in the script
# Global variables can be defined in a script or function and the value can be retrieved
# from the script or function
echo 
echo "Example-1: Shows a good way to use global variable"
echo 

function db1 {
    value=$[ $value * 2 ]
}

read -p "Enter a value: " value 
db1
echo "The new value is $value"
echo

echo 
echo "Example-2: Shows a wrong way to use global variable"
echo 

# function altering a global variable: temp
function db2 {
    # both variables are global
    temp=$[ $value + 5 ]
    result=$[ $temp * 2 ]
}

temp=4
value=6

db2
echo "The result is: $result"
# This condition returns a wrong result because the 
# function db2 has altered the global variable value
if [ $temp -gt $value ]
then 
    echo "temp is larger"
else 
    echo "temp is smaller"
fi
echo