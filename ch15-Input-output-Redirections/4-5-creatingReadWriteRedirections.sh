#!/bin/bash

###########################################################################
echo 
echo "This scripts shows how to create your custom redirections in scripts"
echo "and how  to redirect file decriptors from one to the other or reset to default"
echo
######## 

# Add the below as the content of the file readwrite before running the script
# to see actual behaviour:
# This is line #1 from the file
# This is line #2 from the file
# This is line #3 from the file

# creates a custom input and output redirections
# In this case, it reads from readwrite file
exec 3<>readwrite

read line <&3 #reads first line of readwrite file
echo
echo "Read: $line"
##redirects this line to the custom redirection, 3>
# which apends this line to the 2nd line of the 
# content of the file by replacing all but the corresponding
# strings outside the length of the characters
echo "This is a test line" >&3 
echo
