#!/bin/bash

##########################################################################################
echo 
echo "This scripts shows the usage of SED text pattern address in Linux"
echo 
##########################################################################################

echo 
echo "Example-1: SED text pattern address in Linux"
echo 

# syntax: /pattern/command

# changes all occurence where there's 'rich', 
# and changes the occurence of 'bash' to 'csh'

sed '/rich/s/bash/csh/' /etc/passwd | tail -n5
echo
echo