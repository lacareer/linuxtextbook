#!/bin/bash

###############################################################################
echo 
echo "This scripts shows how to create your custom redirections in scripts"
echo "and how  to redirect file decriptors from one to the other or reset to default"
echo
######## 

# create a custom, 6<, stdin file descriptors that
# reads input from another file descriptor, 0<, 
# that is stored in the file testfile
exec 6<&0
exec 0<testfile

count=1

while read line
do 
    echo "Line #$count: $line"
    count=$[ $count + 1 ]
    echo
done
echo
# reset to default stdin which is the keyboard
exec 0<&6

read -p "Are you done now?" answer

case $answer in
y|Y)
    echo
    echo "Thank you and goodbye!"
    echo;;
n|N)
    echo
    echo "Sorry this is not the end."
    echo;;
esac

echo 

