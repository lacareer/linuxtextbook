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

# This creates an error manually which outputs to the screen
# if you run the like this: "./3-1a-temporaryRedirection.sh" wihout a redirection to a file
echo "This is an error" >&2 #redirecting one line
echo "This is a normal output" 
echo