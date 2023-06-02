#!/bin/bash

###############################################################################
echo 
echo "This scripts shows start, end and dot special character for Regex in Linux"
echo 
###############################################################################


# Special characters are: .*[]^${}\+?|()

# Each of the special character has a special meaning

# You need to escape a special character if you plan to use it as a text character

# If you add the caret, ^, special character any other place but the beging of the
# regex, it acts like a normal text character as shown in example 4

# echo -e => for newline character
# sed '/text/d' (d meants delete)

# dot, ., special character used to match any single character
# note at space is regard as a character in regex


echo 
echo "Anchor, ^, special character in regular expressions"
echo 

# no match is found as the text does not start with 'book'
echo "1. The book store" | sed -n '/^book/p'
echo

# A match is found as a line starts with 'Book'
echo -n "2. "
echo "Book are great to read" | sed -n '/^Book/p'
echo

# no match is found as a line start with 'this'
echo -n "3. "
sed -n '/^this/p' data3.txt
echo

#  A match is found as a line matches 's ^'
echo -n "4. "
echo "This ^ is a test" | sed -n '/s ^/p'
echo

echo 
echo "Ending, $, special character in regular expressions"
echo 

# a match is found as the text does end with 'book'
echo "1. This is a good book" | sed -n '/book$/p'
echo

# no match is found as the text does not end with 'book'
echo "2. This is a good books" | sed -n '/book$/p'
echo

echo 
echo "Combining, ^ and $, special character in regular expressions"
echo 

# a match is found as the text does end with 'this is a test'
echo -en "1. \n\n"
sed -n '/this is a test$/p' data4.txt
echo

# an efficient way to delete blank lines with sed
cat data5.txt
echo

echo -en "2. \n\n"
# sed '/^$/d' data5.txt #this is textbook example but did not work on machine
# same as above
sed '/^[[:space:]]*$/d' data5.txt
echo


echo 
echo "Dot special character in regular expressions"
echo 

# Note that all line that contains text that ends with 'at' is printed
# note that space is regard as a character, the reason line 4 is printed and not line 5

echo
sed -n '/.at/p' data6.txt
echo
