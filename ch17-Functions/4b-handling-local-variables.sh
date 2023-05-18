#!/bin/bash

###############################################################################
echo 
echo "This scripts shows how local variables works in a functions in Linux"
echo 
###############################################################################

# Local variables are valid only  in the function scope where they are defined
echo 
echo "Example-1: Shows a good way to use local variable with the 'local' keyword"
echo 

# function does not alter the global variable: temp
# However, it creates its own local  temp variable
function db2 {
    local temp=$[ $value + 5 ] #local variable
    result=$[ $temp * 2 ] #global variable
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