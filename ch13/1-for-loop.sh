#!/bin/bash

###############################################################################
echo 
echo "This scripts shows various example and notes regarding for-loop"
echo 
###############################################################################

# syntax

# for var in list
# do 
#     commands
# done 

echo 
echo "For-loop Example-1"
echo 

for state in Alabama Alaska Arizona Arkansas California Colorado
do 
    echo The next state is $state
done 

# NB that the last value stored in $state is still available throughout the script
# as shown below
echo
echo NB that the last value stored in $state is still available throughout the script
echo Last value stored in state variable availableoutside script is: $state

echo 
echo "For-loop Example-2. Dealing with complex string values"
echo 

# produces wrong result without escaping the single quotes
for test in I don't know if this'll work
do 
    echo "Word is: $test"
done 

echo

# produces right result by escaping the single quotes with "\" or ""
for test in I don\'t know if "this'll" work
do 
    echo "Word is: $test"
done 

echo 
echo "For-loop Example-3a. Double quotes working with words that containes spaces"
echo 

# throws an error if you do not use the single/double quotes for words with spaces
for state in Nevada "New Hampshire" "New Mexico" "New York"
do 
    echo The next state is $state
done 

echo 
echo "For-loop Example-3b. Single quotes working with words that containes spaces "
echo 

# throws an error if you do not use the double quotes for words with spaces
for state in Nevada 'New Hampshire' 'New Mexico' 'New York'
do 
    echo The next state is $state
done 

echo 
echo "For-loop Example-4. Reading from a variable and add to variable"
echo 

list="Alabama Alaska Arizona Arkansas California Colorado"
list="$list Connecticut"

for state in $list
do 
    echo The next state is $state
done 

echo 
echo "For-loop Example-4. Reading from a file using command substitution"
echo 

file="states.txt"

for state in $(cat $file)
do 
    echo You shou visit the beatiful state of $state
done 