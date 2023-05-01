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
    echo You should visit the beatiful state of $state
done 

# By default,Bash considers "soace, tab, and newline" as filed separators
# However, you can tell bash which of them you want to use or define yours
# You can define as many IFS as you want
# It is best practice to reset the IFS to default after setting it

echo 
echo "For-loop Example-5a. Choosing to use one of Bash IFS - Internal field seperators"
echo 

# setting which default Bash IFS to use
# In this case newline bcs we want to treat each line content in the files
# as a group as s hown in the file ifs.txt

IFS=$IFS # SAVES DEFAULT IFS: Use for resetting
IFS=$'\n' # SETTTING OUR PREFERENCE TO USE FROM DEFAULT IFS

file="ifs.txt"

for state in $(cat $file)
do 
    echo You should visit the beatiful state of $state
done 

IFS=$IFS #resets IFS back to deafult

echo $IFS

echo 
echo "For-loop Example-5b. Choosing to use one of Bash IFS - Internal field seperators"
echo 

# setting which Bash IFS to use
# and define some of ours as shown in our customIFS.txt file
# Remember to string the IFS characters show below by 
# wrapping double quotes arounf the chanracters and using  single quotes for
# wrapping double quotes

# here we: \n, :, ;, *, and "  to define our IFS and 
# wrapping each using "" or ''as neccessary

IFS=$IFS # SAVES DEFAULT IFS: Use for resetting

IFS=$'\n'":""*"";"'"' # CUSTOM IFS

file="customIFS.txt"

for state in $(cat $file)
do 
    echo You should visit the beatiful state of $state
done 

IFS=$IFS #resets IFS back to deafult
