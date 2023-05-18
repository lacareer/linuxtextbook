#!/bin/bash

###############################################################################
echo 
echo "This scripts shows how to create and use functions in Linux"
echo 
######## 

# syntax
# syntax 1
# function name {
#     commands
# }

# syntax 2
# name () {
#     commands
# }

# Notes:
# make sure there space between function name or () and the opening curly braces, {
# make sure a function is defined b4 you try to call it
# Make  sure function names are unique to avoid one function overwriting the other      
# Function are treated like scripts. SO, a new shell is created, independent of the curren sheell
# where the function was call. 
# You can make you function run in the same shell from where it was called by using the 'source'command
# Using source command: ' source ./path/to/function' or '. ./path/to/function' assumming the 
# function  is somewhere in the current directory

# creating a function
function func1 {
    echo "This is an example of a function"
}

count=1
while [ $count -le 5 ]
do 
    func1 #calling the function
    count=$[ $count + 1 ]
done

echo
echo "This is the end of the loop"
echo

func1
echo

echo "This is the end of the script"
echo

