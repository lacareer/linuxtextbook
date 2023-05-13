#!/bin/bash

###############################################################################
echo 
echo "This scripts shows how to create permanent redirections in Linux to different location"
echo 
######## 

# Redirects all stdout to a file

echo 
echo "Example-1: Creates permanent (stderr in this case) redirections in Linux using 'exec' command"
echo 
# defining your permanent redirect with the 'exec' command
# creates the testout and testerror file if it does not exist
# Run "cat testout and testerror" to see output of redirection

# creates permanent redirection stderr
exec 2> testerror

# bcs not stdout is define above, the stdout out goes to the default screen or monitor
echo "This is the start  of the script"
echo "Now redirecting all output to another location"
echo

# creates permanent redirection stdout and sends all stdout to the file
exec 1> testout

echo "This output should go to the testout location"
echo "But this should go to the testerror file" >&2 #line redirection to testerror
echo "" >&2 #line redirection to testerror

echo