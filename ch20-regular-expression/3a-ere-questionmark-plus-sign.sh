#!/bin/bash

###############################################################################
echo 
echo "This scripts shows the use of ?, + pecial character in ERE regex in Linux"
echo 
###############################################################################

# Question mark means the preceding character can appear 0 or one time, not any more
# The character preceding the plus, +, must occur 0 or more times but must be present at least once

echo 
echo "Using Question mark, ?,  in character classes in regular expressions"
echo 
# Question mark means the preceding character can appear 0 or one time, not any more

# prints 'bt'
echo -ne "Example 1. \n\n"
echo "bt" | gawk '/be?t/{print $0}'
echo

echo -ne "Example 2. \n\n"
echo "bet" | gawk '/be?t/{print $0}'
echo

# no match bcs 'e' appears more that 0 or 1 time
echo -ne "Example 3. \n\n"
echo "beet" | gawk '/be?t/{print $0}'
echo

# no match bcs 'e' appears more that 0 or 1 time
echo -ne "Example 4. \n\n"
echo "beeet" | gawk '/be?t/{print $0}'
echo

# no match found
echo -ne "Example 5. \n\n"
echo "bt" | gawk '/b[ae]?t/{print $0}'
echo

echo -ne "Example 6. \n\n"
echo "bat" | gawk '/b[ae]?t/{print $0}'
echo

# no match found
echo -ne "Example 7. \n\n"
echo "bot" | gawk '/b[ae]t/{print $0}'
echo 

echo -ne "Example 8. \n\n"
echo "bet" | gawk '/b[ae]?t/{print $0}'
echo 
# no match for example 9-11
echo -ne "Example 9. \n\n"
echo "baet" | gawk '/b[ae]?t/{print $0}'
echo

echo -ne "Example 10. \n\n"
echo "beat" | gawk '/b[ae]?t/{print $0}'
echo

echo -ne "Example 11. \n\n"
echo "beet" | gawk '/b[ae]?t/{print $0}'
echo 


echo 
echo "Using Plus, +,  in regular expressions"
echo

echo 
echo "Using quation mark, ?,  in regular expressions"
echo
# The character preceding the plus, +, must occur 0 or more times but must be present at least once

echo -ne "Example 1. \n\n"
echo "beeet" | gawk '/be+t/{print $0}'
echo 

echo -ne "Example 2. \n\n"
echo "beet" | gawk '/be+t/{print $0}'
echo 

echo -ne "Example 3. \n\n"
echo "bet" | gawk '/be+t/{print $0}'
echo 
# no match
echo -ne "Example 4. \n\n"
echo "bt" | gawk '/be+t/{print $0}'
echo 

echo 
echo "Using Plus, +,  with characater classes in regular expressions"
echo
# no match
echo -ne "Example 1. \n\n"
echo "bt" | gawk '/b[ae]+t/{print $0}'
echo 

echo -ne "Example 2. \n\n"
echo "bat" | gawk '/b[ae]+t/{print $0}'
echo 

echo -ne "Example 3. \n\n"
echo "bet" | gawk '/b[ae]+t/{print $0}'
echo 

echo -ne "Example 4. \n\n"
echo "beat" | gawk '/b[ae]+t/{print $0}'
echo 

echo -ne "Example 5. \n\n"
echo "beet" | gawk '/b[ae]+t/{print $0}'
echo 

echo -ne "Example 6. \n\n"
echo "beeat" | gawk '/b[ae]+t/{print $0}'
echo 
