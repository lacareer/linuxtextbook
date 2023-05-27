#!/bin/bash

##########################################################################################
echo 
echo "This scripts shows the basic commands using SED editor append and insert in Linux"
echo 
##########################################################################################

# insert commands, 'i', commands add a new line before the specifies line
# delete commands, 'a', commands add a new line after before the specifies line

# syntax
# sed '[address]command\
# new line'

echo 
echo "Example-1: Inserts line to stdout"
echo 

echo "Test Line 2" | sed 'i\Test Line 1'
echo 
echo

echo 
echo "Example-2: Inserts line to stdout"
echo 

echo "Test Line 1" | sed 'a\Test Line 2'
echo 
echo

echo 
echo "Example-3: Inserts text b4 3rd line in to file content"
echo 

sed '3i\This is an inserted line' data6.txt
echo 
echo

echo 
echo "Example-4: Appends text after 3rd line in to file content"
echo 

sed '3a\This is an appended line' data6.txt
echo 
echo

echo 
echo "Example-5: Appends text after the last line in a file content"
echo 

sed '$a\This is an appended after the last line' data6.txt
echo 
echo

echo 
echo "Example-6: Inserts multipe line of test to file content"
echo 

# insert test b4 line 1 in file
# follow the systax to avoid errors
sed '1i\
This is inserted line #1.\
This is inserted line #2' data6.txt
echo 
echo