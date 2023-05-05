#!/bin/bash

###############################################################################
echo 
echo "This scripts shows how find all executable on a machine and create multiple user accounts"
echo 
###############################################################################

echo ""
echo "Example 1: Displays all executable files on machine"
echo ""

#  run script by piing 'more' or 'less' command if using the commandline and 
# it is not appended to the the 'done' command of the loop if you have lots of executable  files
# commandline examples: 
# './practical.sh | more' 
# './practical.sh | less'
# oldIFS=oldIFS
# IFS=":"
# for folder in $PATH
# do
#     echo "$folder:"
#     for file in $folder/*
#     do
#         if [ -x $file ]
#         then
#             echo $file
#         fi
#     done
# done | less

# IFS=oldIFS

echo ""
echo "Example 2: Create multiple user accounts by reading from a file (users.csv)"
echo ""

# deleting creating users so we can run script multiple times



if (userdel -r rich ) && (userdel -r christine ) 
then
 echo "Successfully deleted Rich and Christine's account"
 echo "Now ready to recreate the two accounts again"
 echo
fi

# NOTE
# Make sure to run script with sudo access like below:
# sudo /home/centos-docker-host/Desktop/linuxtextbook/ch13/practical.sh 
# The last line output show an error when there's no more lines to read like below:
# useradd: invalid user name ''

input="users.csv"
while IFS=',' read -r loginname name
do
    echo "Adding $loginname"
    echo
    useradd -c "$name" -m "$loginname"
done < "$input"

