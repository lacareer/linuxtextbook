#!/bin/bash

###############################################################################
echo 
echo "This scripts shows how to create permanent redirections in Linux"
echo 
######## 

# Redirects all stdout to a file

echo 
echo "Example-1: Creates permanent (stderr in this case) redirections in Linux using 'exec' command"
echo 
# defining your permanent redirect with the 'exec' command
# creates the testout file if it does not exist
# Run "cat testout" to see output of redirection

# creates permanent redirection stdout and sends all to testout
exec 1> testout

echo
echo "This is a test of redirecting all output"
echo "from a script to another file"
echo "without having to redirect every individual line"
echo

echo
