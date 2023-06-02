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

oldIFS=$IFS # SAVES DEFAULT IFS: Use for resetting
IFS=$'\n' # SETTTING OUR PREFERENCE TO USE FROM DEFAULT IFS

file="ifs.txt"

for state in $(cat $file)
do 
    echo You should visit the beatiful state of $state
done 

#resets IFS back to deafult
IFS=$oldIFS

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

oldIFS=$IFS # SAVES DEFAULT IFS: Use for resetting

IFS=$'\n'":""*"";"'"' # CUSTOM IFS

file="customIFS.txt"

for state in $(cat $file)
do 
    echo You should visit the beatiful state of $state
done 

IFS=$oldIFS #resets IFS back to deafult

echo 
echo "For-loop Example-6a. Reading directories using wildcards"
echo 

# make sure to wrap the variable $file in double quotes as this takes care of 
# files and folders that contains spaces
for file in /home/centos-docker-host/Desktop/linuxtextbook/ch13-StructuralcCommands-2/*
do 
    if [ -d "$file" ]
    then
        echo "$file is a directory"
    elif [ -f "$file" ]
    then
        echo "$file is a file"
    fi
done 

echo 
echo "For-loop Example-6b. Reading mutiple and using directories using wildcards"
echo 

# make sure to wrap the variable $file in double quotes as this takes care of 
# files and folders that contains spaces
# note that the loop iterates thru the first condition and once completed
# iterates through the next condition and so on....
for file in  /home/centos-docker-host/Desktop/* /home/centos-docker-host/Desktop/linuxtextbook/ch13-StructuralcCommands-2/*
do 
    if [ -d "$file" ]
    then
        echo "$file is a directory"
    elif [ -f "$file" ]
    then
        echo "$file is a file"
    fi
done 

echo 
echo "For-loop Example-7a. C language style for-loop"
echo 

#### syntax for C language

# for(i = 0; i < 10; i++)
# {
#     printf("The next number is %d\n", i)
# }

# ###### Bash style

# for((variable assignment; condition; iteration process))
# do
#     command/s
# done

for((i = 1; i <= 10; i++))
do
    echo "The next number is: $i"
    echo
done

echo 
echo "For-loop Example-7b. C language style for-loop"
echo 
# here we define 2 variable, one condition, and 2 iteration process
for((a = 1, b = 10; a <= 10; a++, b--))
do
    echo "The difference between $a and $b is: $a - $b"
    echo
done