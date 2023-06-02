#!/bin/bash

###############################################################################
echo 
echo "This scripts shows two tipes of Regex in Linux"
echo 
###############################################################################

# Note the following
# regex are by default case-sensitive
# regex matches text from left to right. As long as the characters are match in 
# that fashion, even more characters after the text search does not invalidate it as
# shown in example 5 and 6
# -n => suppress all out put but the match data
# p => prints to screen

echo 
echo "Linux Basic Regular Expression plain text Regex"
echo 

# Prints to screen bcs a match is found
echo "1. This is a sed test" | sed -n '/test/p'
echo

# Does not print to screen bcs not match is found
echo "2. This is a sed test" | sed -n '/trial/p'
echo

# Prints to screen bcs a match is found
echo "3. This is a gawk test" | gawk -n '/test/{print $0}'
echo

# Does not print to screen bcs not match is found
echo "4. This is a gawk test" | gawk -n '/trial/{print $0}'
echo

# Prints to screen bcs a match is found
# 'books' still matches 'book' - left to right match
echo "5. This books are expensive" | sed -n '/book/p'
echo

# Does not print to screen bcs not match is found
# 'book' does not matches 'books' - left to right match
echo "6. This book is expensive" | sed -n '/books/p'
echo

# Prints to screen bcs a match is found
# cases of 'This' matches 'This'
echo "7. This is a sed test" | sed -n '/This/p'
echo

# Does not print to screen bcs not match is found
# case 'This' does not match 'this'
echo "8. This is a sed test" | sed -n '/this/p'
echo

# Prints to screen bcs there is a match
# whitespaces are treated as characters
echo "9. This is line number 1" | sed -n '/ber 1/p'
echo

# Does not prints to screen bcs there is a match
# whitespace found no match
echo "10. This is line number1" | sed -n '/ber 1/p'
echo

# Prints to screen bcs there is a match for double whitespaces
# whitespaces are treated as characters
echo 
sed -n '/  /p' data1.txt
echo

