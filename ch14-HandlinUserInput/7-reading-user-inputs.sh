#!/bin/bash

###############################################################################
echo 
echo "This scripts shows various example of prompting and reading user input"
echo 
######## 

echo 
echo "Example-1: Get a user to enter their name"
echo 

echo -n "Enter your name: "
# saves user input to the variable "name"
read name
echo
echo "Hello $name, welcome to my script."
echo

echo 
echo "Example-2: Use Read, with -p flag and a singular variable, to prompt and grab user inputs"
echo 

# reads user input and save it to the variable "age"
read -p "Please enter your age: " age
days=$[ $age * 365 ]
echo
echo "That means you are over $days days  old!."
echo

echo 
echo "Example-3: Use Read, with -p flag and a multiple variable, to prompt and grab user inputs"
echo 

# reads user input and save it to the variable "age"
read -p "Please enter your first and last name: " first last
days=$[ $age * 365 ]
echo
echo "You are welcome, $first $last!"
echo

echo 
echo "Example-4: Use Read, with -p flag and 'REPLY' variable, to prompt and grab user inputs"
echo 

read -p "Please enter your first and last name: " 
echo
echo "You are welcome, $REPLY!"
echo

echo 
echo "Example-5: Use Read, with -p flag and -t for time variable, to prompt and grab user inputs"
echo 

# MAKE SURE TO PRESS ENTER IF YOU ENTER A VALUE
# -t help your script to continue executing after x seconds
# without it your script will be stuck waiting for user input
# if time  elapses and user does not enter anything, the command returns
# a non-zero exit code
if read -t 5 -p "Please enter your name: " name
then
    echo
    echo "You are welcome, $name! It is nice to meet you."
    echo
else 
    echo 
    echo "Please try again. You failed to provide your name with the time limit."
    echo
fi

echo 
echo "Example-6a: Use Read and pipe  to read from a file"
echo 

# WITH THE '-n' option, YOU DON'T NEED TO PRESS ENTER IF YOU ENTER A VALUE
# -n help your script to count the number of characters entered by the user
# This can be jused to ask a user if he/she wants to read from a file
# The script returns a zero exit status for each line in a file with content and
# a non-zero exit code for lines without content or when it finishes reading the file

location="/home/centos-docker-host/Desktop/linuxtextbook/ch14"
count=1

cat $location/text.txt | while read line
do 
    echo
    echo "Line #$count: $line"
    count=$[ $count + 1 ]
done

echo
echo 
echo "Example-6b: Use Read and input redirect to read from a file"
echo 
# using input redirection to read from a file
# note that that you can change this behaviour from
# if some after this point you needto read input.
# it will default to reading from this file
# To stop this behaviour create your own redirect 
# as discussed in ch15

exec 0< text.txt #reads in file content

while read inputRedirect
do 
    echo
    echo "Line #$count: $inputRedirect"
    count=$[ $count + 1 ]
done

echo
echo "Finished processing the file"
echo
exit