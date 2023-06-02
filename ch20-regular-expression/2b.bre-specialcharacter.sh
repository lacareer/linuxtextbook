#!/bin/bash

###############################################################################
echo 
echo "This scripts shows special character used for Regex in Linux"
echo 
###############################################################################


# Special characters are: .*[]^${}\+?|()
# Each of the special character has a special meaning
# You need to escape a special character if you plan to use it as a text character
# If you add the caret, ^, special character any other place but the beging of the
# regex, it acts like a normal text character as shown in example 4
echo 
echo "Escaping special character in regular expressions"
echo 

# escaping the dollar sign, $ in echo and sed
echo "1. The cost is \$4:00" | sed -n '/\$/p'
echo

# escaping the dollar sign, $ in sed only
echo  -n "2. "
sed -n '/\$/p' data2.txt
echo

# escaping the '\' in echo and sed
echo "3. \ is a special character" | sed -n '/\\/p'
echo

# escaping the '/' in echo and sed
echo "4. The division of 3 / 4 is 0.75" | sed -n '/\//p'
echo