#!/bin/bash

###############################################################################
echo 
echo "This scripts shows usage of Regex to validate phone numbers"
echo 
###############################################################################

# Phone numbers pattern 
# 1st 3 numbers represent area code
# (123)456-7890
# (123) 456-7890
# 123-456-7890
# 123.456.7890

# Regex for phone number start

# ( or a number is:
# ^\(? => means ( may occure 0 or 1 time

# In USA the area code starts with the number 2. None starts with 0
# [2-9][0-9]{2} => means start with the muber 2 and two more nummbers between 0-9

# end of area code might have closing parenthesis or not (0 or 1 time)
# \)?

# After area code there might or not be a space or hyphen or period
# (| |-|\.)

# Next three digits each between 0-9
# [0-9]{3}

# After above 3 digist there might be with a space, -, or period.
# (| |-|\.)

# Ends with four each between 0-9
# [0-9]{4}

echo "Below are the only valid phone contacts"
echo 

gawk --re-interval '/^\(?[2-9][0-9]{2}\)?(| |-|\.)[0-9]{3}(| |-|\.)[0-9]{4}/{print $0}' phonelist.txt
echo
