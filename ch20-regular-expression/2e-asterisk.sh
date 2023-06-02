#!/bin/bash

###############################################################################
echo 
echo "This scripts shows start, end and dot special character for Regex in Linux"
echo 
###############################################################################

# ASTERISK MEANS THE CHARACTER THAT PRECEDES THE  CHARACTER MUST APPEAR 0 OR M ORE TIMES

echo 
echo "Using ASTERISK in regular expressions"
echo 

echo -ne "Example 1. \n\n"
echo "ik" | sed -n '/ie*k/p'
echo

echo -ne "Example 2. \n\n"
echo "iek" | sed -n '/ie*k/p'
echo

echo -ne "Example 3. \n\n"
echo "ieek" | sed -n '/ie*k/p'
echo

echo -ne "Example 4. \n\n"
echo "ieeek" | sed -n '/ie*k/p'
echo

echo -ne "Example 5. \n\n"
echo "ieeeek" | sed -n '/ie*k/p'
echo

echo 
echo "Using ASTERISK in regular expressions for words with mulltiple spellings or misspellings"
echo 

# usage for words with mulltiple spellings or misspellings
echo -ne "Example 1. \n\n"
echo "I'm getting a color TV" | sed -n '/colou*r/p'
echo

echo -ne "Example 2. \n\n"
echo "I'm getting a colour TV" | sed -n '/colou*r/p'
echo

echo -ne "Example 3. \n\n"
echo "I ate a potatoe with my lunch" | sed -n '/potatoe*/p'
echo

echo -ne "Example 4. \n\n"
echo "I ate a potato with my lunch" | sed -n '/potatoe*/p'
echo

echo 
echo "Using a range of text"
echo 

echo -ne "Example 5. \n\n"
# A line/text range of that starts with 'regular', contain 0 or  more characters b4 the word 'expression'
echo "this is a regular pattern expression" | sed -n '/regular.*expression/p'
echo

# using * for character classes
echo 
echo "Using asterisk, *, for character classes"
echo 

echo -ne "Example 1. \n\n"
echo "bt" | sed -n '/b[ae]*/p'
echo

echo -ne "Example 2. \n\n"
echo "bat" | sed -n '/b[ae]*/p'
echo

echo -ne "Example 1. \n\n"
echo "bet" | sed -n '/b[ae]*/p'
echo

echo -ne "Example 4. \n\n"
echo "btt" | sed -n '/b[ae]*/p'
echo

echo -ne "Example 5. \n\n"
echo "baat" | sed -n '/b[ae]*/p'
echo

echo -ne "Example 6. \n\n"
echo "baeeet" | sed -n '/b[ae]*/p'
echo

echo -ne "Example 7. \n\n"
echo "baeeaeeat" | sed -n '/b[ae]*/p'
echo

echo -ne "Example 8. \n\n"
echo "baskeeet" | sed -n '/b[ae]*/p'
echo

