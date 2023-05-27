#!/bin/bash

# **** Notes **** 

# 1. Run script with command: ./practical.sh oldscripts 

# 2. Make sure the files in the ch19-practical directory are:
    # a. practical.sh
    # b. oldscripts folder and contents

# 3. Pass different names each time you run the script to see same result in different folder

# 4. grep -l "/bin/sh" oldscripts/*.sh (returns all the below which is all files with text match of '/bin/sh')
    # oldscripts/old-scrpt-1.sh
    # oldscripts/old-scrpt-2.sh
    # oldscripts/old-scrpt-3.sh
    # oldscripts/old-scrpt-4.sh
    # oldscripts/old-scrpt-5.sh

# ###################### Actual Script ################################################

# change the shebang used for a directory of scripts
# 
# ###################### Functions declarations #######################################
# 
function errorOrExit {
    echo
    echo $message1
    echo $message2
    echo "Exiting scripts ...."
}

# 
function modifyScripts {
    echo
    read -p "Directory name in which to store new scripts? " newScriptDir
    # mkdir $newScriptDir
    echo
    # 
    echo "Modifying the scripts started at $(date +%N) nanoseconds"
    echo
    # 
    count=0

    for filename in $( grep -l "/bin/sh" $scriptDir/*.sh )
    do 
        # gets 
        newFilename=$(basename $filename)
        echo $newFilename
        if [ -d $newScriptDir ]
        then
            # prints out content of file and changes only line number 1 and redirect
            # entire content to newScriptDir/$newFilename
            cat $filename | 
            sed '1c\#!/bin/bash/' > $newScriptDir/$newFilename

            # same as above (my preference)
            # changes only line number and redirect entire file content to newScriptDir/$newFilename
            
            # sed '1c\#!/bin/bash/' $filename > $newScriptDir/$newFilename
        else
            mkdir $newScriptDir
            sed '1c\#!/bin/bash/' $filename > $newScriptDir/$newFilename
        fi
        
        # cat $filename | 
        # sed '1c\#!/bin/bash/' > $newScriptDir/$newFilename

        count=$[ $count + 1 ]
    done
    echo
    echo "$count modifications completed at $(date +%N) nanoseconds"
    echo
}
# 
######################## Check for script directory ####################################
if [ -z $1 ]
then
    message1="The name of the directory containing scripts to check"
    message2="is missing. Please provide the name of the script of directory as a parameter"
    errorOrExit 
else
    scriptDir=$1
fi 
# 
######################## Create shebang ################################################
# 

sed -sn '1F;
1s!/bin/sh!/bin/bash!' $scriptDir/*.sh |
gawk 'BEGIN {print ""
print "The following scripts have /bin/sh as the shebang:"
print "================================================"}
{print $0}
END {print ""
print "End of report"}'
# 
###################### Change Scripts? ###################################################
# 
# 
echo 
read -p "Do you wish to modify these scripts? (Y/N) " answer
echo
# 
case $answer in 
Y|y) 
    modifyScripts;;
N|n) 
    message1="No scripts will be modified."
    message2="Run this script later to modify, if desired."
    errorOrExit;;
*)
    message1="Did not answer Yes(Y/y) or No(N/n)"
    message2="No script will be modified."
    errorOrExit;;
esac
echo
echo
