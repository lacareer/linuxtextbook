#!/bin/bash

###############################################################################
echo 
echo "This scripts shows the standard input file descriptors, 0<, in Linux"
echo 
######## 

# The default input file description, input redirect, is the keyboard
# The keyboard is the default way to send input to the shell
#  You can also send input to the shell from a file as shown in the examples below

echo 
echo "Example-1: Input redirection from the keyboard"
echo 

# On the command-line, enter the cat command and type the text shown  to see the input from 
# the keyboard on the screen and the input sent to the cat command
# which is then printed to the screen

# cat (press enter)
# This is test line 1 (type text and press enter)
# This is test line 1 (prints this line after you press enter above)
# (press enter to create a line space)

# This is test line 2 (type text and press enter)
# This is test line 2 (prints this line after you press enter above)

echo 
echo "Example-2: Input redirection from a file"
echo 

cat < testfile
# same as command below
# cat 0< testfile
echo