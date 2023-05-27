#!/bin/bash

###############################################################################
echo 
echo "This scripts shows the GAWK editor notes and command  options in Linux"
echo 
###############################################################################

# One of the primary features of gawk is its ability to manipulate data in text files
# It does this automatically by assigning a variable to each data  element in a file like below:
#  $0 represents the entire line
# $1 first data field in hthe line of text
# $2 second data field in hthe line of text
# ..
# ..
# $n nth data field in hthe line of text

# note that the default gawk field seperator is whitespace. However,
# this can defined using the '-F' flag

# Note that the gawk program allows you to define when the program script is run.
# By default it reads a line of text from input and then executes the program script on data in the line of text
# The BEGIN keyword can be used to tell gawk when to run program script

echo 
echo "Example-1: Gawk using the keyword BEGIN"
echo 
# Tells gaw to run the program immediately after the keyword BEGIN
gawk 'BEGIN {print "Hello world!"}'
echo 
echo

echo 
echo "Example-2: Gawk using the keyword BEGIN"
echo 
# Tells gaw to run the program immediately after the keyword BEGIN
gawk 'BEGIN {print "The data2 file contents: "} {print $0}' data2.txt
echo 
echo

echo 
echo "Example-3: Gawk using the keyword BEGIN and END"
echo 
# Tells gaw to run the program immediately after the keyword BEGIN
gawk 'BEGIN {print "The data2 file contents ... "} {print $0} END {print ".... End of file"}' data2.txt
echo 
echo

echo 
echo "Example-4: Gawk using the keyword BEGIN and END in a program file"
echo 
# Tells gaw to run the program immediately after the keyword BEGIN
# THe scripts defines a special gawk variable called 'FS' that hold the delimiter to use
# THe 'FS' variable is another way to define field seperators
# Remember default delimiter is whitespace
gawk -f script4.gawk /etc/passwd | tail -n5
echo 
echo