#!/bin/bash

###############################################################################
echo 
echo "This scripts shows usage of braces and grouping for Regex in Linux"
echo 
###############################################################################

# Braces allows you to specify a limit on a repeatable regular expression
# This is referred to as 'intervals'
# ERE uses two formats:
#   1. m - the regex appears exactly m times
#   2. m,n - the regex appears at least m times but not more than n times

# gawk does not by default recognize 'intervals'. 
# You must specify '--re-interval' commandline option for gawk to recognize 'intervals'

# Pipes, |, allows you to specify 2 or more regex uisng a logical OR formula

# Group of regex can be done with parenthesis, ().
# When you group regex, they are treated like standard characters

echo 
echo "Using Braces in regular expressions"
echo 

# no match  found
echo -ne "Example 1. \n\n"
echo "bt" | gawk --re-interval '/be{1}t/{print $0}' 
echo

echo -ne "Example 2. \n\n"
echo "bet" | gawk --re-interval '/be{1}t/{print $0}'
echo

# no match found
echo -ne "Example 3. \n\n"
echo "beet" | gawk --re-interval '/be{1}t/{print $0}'
echo

# no match
echo -ne "Example 4. \n\n"
echo "bt" | gawk --re-interval '/be{1,2}t/{print $0}' 
echo

echo -ne "Example 5. \n\n"
echo "bet" | gawk --re-interval '/be{1,2}t/{print $0}' 
echo 

echo -ne "Example 6. \n\n"
echo "beet" | gawk --re-interval '/be{1,2}t/{print $0}' 
echo

# no match
echo -ne "Example 7. \n\n"
echo "beeet" | gawk --re-interval '/be{1,2}t/{print $0}' 
echo

echo 
echo "Using Braces with character classes in regular expressions"
echo 

# no match
echo -ne "Example 1. \n\n"
echo "bt" | gawk --re-interval '/b[ae]{1,2}t/{print $0}' 
echo 

echo -ne "Example 2. \n\n"
echo "bat" | gawk --re-interval '/b[ae]{1,2}t/{print $0}' 
echo

echo -ne "Example 3. \n\n"
echo "bet" | gawk --re-interval '/b[ae]{1,2}t/{print $0}' 
echo 

echo -ne "Example 4. \n\n"
echo "beat" | gawk --re-interval '/b[ae]{1,2}t/{print $0}' 
echo

echo -ne "Example 5. \n\n"
echo "beet" | gawk --re-interval '/b[ae]{1,2}t/{print $0}' 
echo

# no match
echo -ne "Example 6. \n\n"
echo "beeat" | gawk --re-interval '/b[ae]{1,2}t/{print $0}' 
echo

# no match
echo -ne "Example 7. \n\n"
echo "baeet" | gawk --re-interval '/b[ae]{1,2}t/{print $0}' 
echo

# no match
echo -ne "Example 8. \n\n"
echo "baeaet" | gawk --re-interval '/b[ae]{1,2}t/{print $0}' 
echo 

echo 
echo "Using Pipes in regular expressions"
echo 
# Pipes, |, allows you to specify 2 or more regex uisng a logical OR formula

echo -ne "Example 1. \n\n"
echo "The cat is asleep" | gawk '/cat|dog/{print $0}' 
echo 

echo -ne "Example 2. \n\n"
echo "The dog is asleep" | gawk '/cat|dog/{print $0}' 
echo

# no match
echo -ne "Example 3. \n\n"
echo "The sheep is asleep" | gawk '/cat|dog/{print $0}' 
echo 

echo -ne "Example 4. \n\n"
echo "He has a hat." | gawk '/[ch]at|dog/{print $0}' 
echo

echo 
echo "Using Groups in regular expressions"
echo 
# Group of regex can be done with parenthesis, ().
# When you group regex, they are treated like standard characters

echo -ne "Example 1. \n\n"
echo "Sat" | gawk '/Sat(urday)?/{print $0}' 
echo 


echo -ne "Example 2. \n\n"
echo "Saturday" | gawk '/Sat(urday)?/{print $0}' 
echo 

echo -ne "Example 3. \n\n"
echo "cat" | gawk '/(c|b)a(b|t)/{print $0}' 
echo 

echo -ne "Example 4. \n\n"
echo "cab" | gawk '/(c|b)a(b|t)/{print $0}' 
echo 

echo -ne "Example 5. \n\n"
echo "bat" | gawk '/(c|b)a(b|t)/{print $0}' 
echo 

echo -ne "Example 6. \n\n"
echo "bab" | gawk '/(c|b)a(b|t)/{print $0}' 
echo 

# no match 7-8
echo -ne "Example 7. \n\n"
echo "tab" | gawk '/(c|b)a(b|t)/{print $0}' 
echo 

echo -ne "Example 8. \n\n"
echo "tac" | gawk '/(c|b)a(b|t)/{print $0}' 
echo 