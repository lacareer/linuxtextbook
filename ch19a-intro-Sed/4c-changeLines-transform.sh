#!/bin/bash

##########################################################################################
echo 
echo "This scripts shows the basic commands using SED change and transform editor in Linux"
echo 
##########################################################################################

# Allows you to change the content of contents of an entire line of text in hthe dta stream

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

echo 
echo "Example-6: Transforms text by replace/substitution single characters with another"
echo 

# syntax for transform: [address]y/inchars/outchars
# replaces all occurence

# replaces char 1 and 1 with 6 and 6 respectively
echo "Test #1 for try #1." | sed 'y/123/678/'
echo
echo

echo 
echo "Example-7: Transforms text by replace/substitution single characters with another"
echo 

# syntax for transform: [address]y/inchars/outchars

# replaces char 1,2,3 with 7,8,9 respectively
sed 'y/123/789/' data9.txt 
echo
echo