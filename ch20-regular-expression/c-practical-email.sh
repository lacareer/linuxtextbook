#!/bin/bash

###############################################################################
echo 
echo "This scripts shows usage of Regex to emails"
echo 
###############################################################################

# Sample emails will use any of the following: dot, dash, plus sign, and underscore

# sample : username@hostname

# check a-practical.sh or b-practical.sh script for explanation of how
# regex is generated 
echo -e "Below are the only valid emails:\n\n"
gawk  --re-interval  '/^([a-zA-Z0-9_\-\.\+]+)@([a-zA-Z0-9_\-\.]+)\.([a-zA-Z]{2,5})$/' maillist.txt
echo

