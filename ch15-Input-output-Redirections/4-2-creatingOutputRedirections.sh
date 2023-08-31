#!/bin/bash

###############################################################################
echo 
echo "This scripts shows how to create your custom redirections in scripts"
echo
######## 
# THe default file descriptors are: 0-2
# you can have a max of 9 file scriptors per scripts
# That means you can create file descriptors of 3-8 custom
# 
# creates a custom permanent redirection stdout
# Line #1 and #3 output/redirects to the default stdout, the monitor,
# but Line #2 and echo "" output/redirects to the file test13out
# "cat test13out" to see result of redirection to file
exec 3> test13out

echo "Line #1: This the line #1 from the file"
echo "" >&3 #sends ooutput to test13out
echo "Line #2: This is the line #2 from the file" >&3 #sends ooutput to test13out
echo "" >&3 #sends ooutput to test13out
echo "Line #3: This is the line #3 from the file"

echo
