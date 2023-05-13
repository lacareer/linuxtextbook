#!/bin/bash

###############################################################################
echo 
echo "This scripts shows how to create temporary redirections in Linux"
echo 
######## 

# The default input file description, input redirect, is the keyboard
# The keyboard is the default way to send input to the shell
#  You can also send input to the shell from a file as shown in the examples below

echo 
echo "Example-1: Creates temporary error redirections in Linux"
echo 

# This creates an error manually which outputs to the test9 file
# if you run the like this: "./3-1a-temporaryRedirection.sh 2> test9" 
# witha redirection to a file (it creates the file if it does not exist)
echo "This is an error" >&2 # redirects this line of this error is sent to test9
echo "This is a normal output" # goes to the monitor
echo