#!/bin/bash

###############################################################################
echo 
echo "This scripts shows the standard output file descriptors, 1>, in Linux"
echo 
######## 

# The default output file description, output redirect, is the screen/momitor
# The monitor is the default way to redirect output to the shell
#  You can also send output to the shell from a file as shown in the examples below

echo 
echo "Example-1: Output redirection from the monitor"
echo 

# output of the command is sent to monitor screen
ls -l

echo 
echo "Example-2: Output redirection to a file"
echo 
# send the output of the command to the file test2
# note that it creates the file test2 
# if it does not exist and overwrites content if it does
ls -l testfile > test2
# same as command above
# ls -l testfile 1> test2

# redirects and appends to the content the file test2
# creates it if it does not exist but appends to the content
# if it exist without overwriting the content of the existing file
who >> test2
# same as command above
# who 1>> test2

echo
# view command of last 2 commands
cat test2

echo