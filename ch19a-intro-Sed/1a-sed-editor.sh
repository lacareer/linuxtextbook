#!/bin/bash

###############################################################################
echo 
echo "This scripts shows the SED editor notes and command  options in Linux"
echo 
###############################################################################

# The sed editor can manipulate dat in a stream based on the commands either entered on the command line 
# or contained in a test file. The sed editor operates as follows
echo "1. Read one data line from the input"
echo "2. Match that data with the supplied editor commands"
echo "3. Change data in the stream as specified in the commands"
echo "4. Output the new data to STDOUT"
echo "5. Generally, SED, does not modify the content of a file"
echo
echo

# Syntax  for sed: sed options script  file
echo "The syntax for sed is: 'sed options script file'"
echo ""
echo ""

echo "Below are the sed command options"
echo
echo

echo "  OPTIONS                   DESCRIPTION"
echo "  ============================================================================================================"
echo "  -e commands               Adds additional sed commands to run while processing  the input"
echo "  -f file                   Adds the commands specified in a file to command to run while processing the input"
echo "  -n                        Doesn't produce output for each command, but waits for the print(p) commands"
echo 
echo 