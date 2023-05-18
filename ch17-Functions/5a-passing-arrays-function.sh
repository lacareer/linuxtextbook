#!/bin/bash

###############################################################################
echo 
echo "This scripts shows how to pass arrays to a functions in Linux"
echo 
###############################################################################


echo 
echo "Example-1: Shows a bad way to pass arrays to a function"
echo

function testit1 {
    echo "The parameters are: $@"
    thisarray=$1
    # prints only first item of passed array bcs it is done the wrong way
    echo "The received array is ${thisarray[*]}"
}

myarray=(1 2 3 4 5)
echo "The original array is ${myarray[*]}"
echo
# wrong way to call function and pass the array
testit1 $myarray

echo 
echo "Example-2a: Shows a good way to pass arrays to a function"
echo 

function testit2 {
    echo "The parameters are: $@"
    # creating new array from passed array
    local newarray
    newarray=(`echo "$@"`)
    # prints all element in the array
    echo "The received array is ${newarray[*]}"
}

myarray=(1 2 3 4 5)
echo "The original array is ${myarray[*]}"
echo
# right way to call function and pass the array
# passing array items as individual params to the function
testit2 ${myarray[*]}

echo 
echo "Example-2b: Shows a good way to pass arrays to a function"
echo

function testit3 {
    echo "The parameters are: $@"
    local sum=0
    # creating new array from passed array
    local newarray
    newarray=(`echo "$@"`)
    # prints all element in the array
    echo "The received array is ${newarray[*]}"
    echo

    for value in ${newarray[*]}
    do
        sum=$[ $sum + $value ]
    done
    echo $sum
    echo
}

myarray=(1 2 3 4 5)
echo "The original array is ${myarray[*]}"
echo
# right way to call function and pass the array
# passing array items as individual params to the function
testit3 ${myarray[*]}