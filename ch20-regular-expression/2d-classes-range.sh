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

# ***************** SPECIAL BRE CLASSES ************************************

# [[:alpha:]] => matches any alphabetical character, either upper or lower case
# [[:alnum:]] => matches any alphanumeric characters 0-9, A-Z, or a-Z 
# [[:blank:]] => matches space or tab characters 
# [[:digit:]] => matches numeric digit from 0-9
# [[:lower:]] => matches any any alphabetical character a-z 
# [[:print:]] => matches any printable character 
# [[:punct:]] => matches a punctuation character 
# [[:space:]] => matches any whitespace character: space, tab, newline(NL), formfeed(FF), vertical tab(VT), carriage return(CR)
# [[:upper:]] => Matches any uppercase alphabetical character A-Z

# ****************************************************************************************

echo 
echo "Using ranges in regular expressions"
echo 

# saves lot of typing: [0-9] instead [0123456789]
echo -ne "Example 1. \n\n"
sed -n '/^[0-9][0-9][0-9][0-9][0-9]$/p' data8.txt
echo

# saves lot of typing: [0-9] instead [0123456789]
# No match is found and nothing is printed
echo "Example 2. "
echo "a8392" | sed -n '/^[0-9][0-9][0-9][0-9][0-9]$/p'
echo

# saves lot of typing: [c-h] instead of [cdefgh] 
# looks for text with cat, fat, gat, eat, hat, dat
echo -ne "Example 3. \n\n"
sed -n '/[c-h]at/p' data6.txt
echo

# saves lot of typing: [c-h] and [h-m] instead of [cdefgh] and [hijklm]
# looks for text with cat, fat, gat, eat, hat, dat
echo -ne "Example 4. \n\n"
sed -n '/[a-ch-m]at/p' data6.txt
echo

echo "Example 5. "
# no match is found
echo "I'm getting fat" | sed -n '/[a-ch-m]at/p' 
echo

echo 
echo "Using BRE special classes in regular expressions"
echo 

# saves lot of typing: [0-9] instead [0123456789]
echo -ne "Example 1. \n\n"
# prints nothing bcs no number is part of the content
echo "abc" | sed -n '/[[:digit:]]/p'
echo

echo -ne "Example 2. \n\n"
# prints bcs abc is an alphabet and is part of the data stream
echo "abc" | sed -n '/[[:alpha:]]/p'
echo

echo -ne "Example 3. \n\n"
# prints bcs number is part of the content
echo "abc123" | sed -n '/[[:digit:]]/p'
echo

echo -ne "Example 4. \n\n"
# prints text bcs it contains a punctuation
echo "This is, a test" | sed -n '/[[:punct:]]/p'
echo

echo -ne "Example 5. \n\n"
# prints nothing bcs no number is part of the content
echo "This is a test" | sed -n '/[[:punct:]]/p'
echo