#!/bin/bash

##########################################################################################
echo 
echo "This scripts shows the basic commands using SED change and transform editor in Linux"
echo 
##########################################################################################

# insert commands, 'i', commands add a new line before the specifies line
# delete commands, 'i', commands add a new line after before the specifies line

# syntax
# sed '[address]command\
# new line'

echo 
echo "Example-1: Changes test on line 2 to stdout"
echo 

sed '2c\This is a changed line of text' data6.txt 
echo
echo

echo 
echo "Example-2: Changes line with matching text to stdout"
echo 

# follow syntax strictly
sed '/3rd line/c\
This is the changed line of text' data6.txt 
echo
echo

echo 
echo "Example-3: Changes line with matching text with multiple lines to stdout"
echo 

# follow syntax strictly
sed '/3rd line/c\
This is the changed line #1 of text\
This is the changed line #2 of text' data6.txt 
echo
echo

echo 
echo "Example-4: Changes line with matching text with multiple lines to stdout"
echo 

# follow syntax strictly
sed '/have 6 Infinity Stones/c\
Snap! This is a changed line of text' data8.txt 
echo
echo

echo 
echo "Example-5: Changes line with matching text with multiple lines to stdout"
echo 

# follow syntax strictly
sed '/have 6 Infinity Stones/c\
Snap! This is a changed line of text' data8.txt 
echo
echo