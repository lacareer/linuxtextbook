#!/bin/bash

###############################################################################
echo 
echo "This scripts shows the GAWK editor notes and command  options in Linux"
echo 
###############################################################################

# One of the primary features of gawk is its ability to manipulate data in text files
# It does this automatically by assigning a variable to each data  element in a file like below:
# $0 represents the entire line
# $1 first data field in the line of text
# $2 second data field in hthe line of text
# ..
# ..
# $n nth data field in hthe line of text

# note that the default gawk field seperator is whitespace. However,
# this can defined using the '-F' flag

echo 
echo "Example-1: Gawk prints first variable in a line"
echo 
# prints the first variable/$1 (word) on each line the file
gawk '{print $1}' data2.txt
echo 
echo

echo 
echo "Example-2: Gawk defines a delimiter with '-F' flag"
echo 
# defines a delimiter, ':', using the  '-F' flag and
# prints the first variable/$1 (word) on each line the file
gawk -F: '{print $1}' /etc/passwd | tail -n5
echo 
echo

echo 
echo

echo 
echo "Example-3: Gawk running program from a file"
echo 

gawk -F: -f script2.gawk /etc/passwd | tail -n5
echo
echo

echo 
echo "Example-4: Gawk running program from a file with multiple program lines"
echo 

gawk -F: -f script3.gawk /etc/passwd | tail -n5
echo
echo

echo 
echo "Example-5a: Gawk using multiple commands"
echo 
# redefines $4 (Rich => Christine) and prints $0(entire line)
echo "My name is Rich" | gawk '{$4="Christine"; print $0}'
echo 
echo

echo 
echo "Example-5b: Gawk using multiple commands on command line"
echo 
# redefines $4 (Rich => Christine) and prints $0(entire line)
# THis example is same as above but uses multiple lines
# Enter the code below on cmd or uncomment and run script to test and then
# ENTER THIS, WITHOUT QUOTES, ON CMD WHEN THIS EXAMPLE RUNS: 'My name is Rich'
# Then press enter and ctrl + c to stop cmd prompt
gawk '{
$4="Christine"; 
print $0}'
echo