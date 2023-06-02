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

# You can defined a character class using []
# regex tries to match content in the []


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

echo 
echo "Character clasess in regular expressions"
echo 

# Note that all line that contains text that ends with 'at' is printed
# note that space is regard as a character, the reason line 4 is printed and not line 5

echo -en "1. \n"
# searches word contain either 'hat' or 'cat'
sed -n '/[ch]at/p' data6.txt
echo

echo -n "2. My answer is Yes" | sed -n '/[Yy]es/p'
echo

echo -n "3. My answer is yes" | sed -n '/[Yy]es/p'
echo

echo -n "4. My answer is Yes" | sed -n '/[Yy][Ee][Ss]/p'
echo

echo -n "5. My answer is YeS" | sed -n '/[Yy][Ee][Ss]/p'
echo

echo -n "6. My answer is YEs" | sed -n '/[Yy][Ee][Ss]/p'
echo

echo
echo -en "7. \n"
# searches line that contains 0-3 as a number
sed -n '/[0123]/p' data7.txt
echo

echo
echo -en "8. \n"
# searches line contains 5-digit area code
# results not a 100% accurate bcs it pick one 6-digit area code
sed -n '/[0123456789][0123456789][0123456789][0123456789]/p' data8.txt
echo

echo
echo -en "9. \n"
# searches line contains 5-digit area code
# results a 100% accurate using start and end special characters
# and only picks numbers with 5-digit area code
sed -n '/^[0123456789][0123456789][0123456789][0123456789][0123456789]$/p' data8.txt
echo

echo
echo -en "10. \n"
# handling multiple words with diffrent  spellings
sed -n '/maint[ea]n[ae]nce/p; /sep[ea]r[ea]te/p' data9.txt
echo

echo 
echo "Negating character clasess in regular expressions"
echo 

# Note that all line that contains text that ends with 'at' is printed
# note that space is regard as a character, the reason line 4 is printed and not line 5

echo -en "1. \n"
# searches word that does not contain either 'hat' or 'cat'
sed -n '/[^ch]at/p' data6.txt
echo