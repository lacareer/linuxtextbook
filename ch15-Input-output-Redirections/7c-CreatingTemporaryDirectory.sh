#!/bin/bash

###############################################################################
echo 
echo "This scripts shows how to create temporary files in /tmp"
echo "This can be  done using the 'mktemp -d filename.XXXXXX' command for local temp directory or"
echo "The'mktemp -dt filename.XXXXXX' command for temp directory in /tmp"
echo
###############################################################################

currentlocation=$(pwd)
# creating a temp directory in the linux /tmp  directory
# To do so, you must pass the -d option when creating the directory, it
# creates a local directory
# Note that when you pass the -dt(means creta temp directory in the /tmp) option, the mktemp
# command returns the absolute/full path of the newly created directory
# when the command executes successfully, 

testtempdir=$(mktemp -d testtempdir.XXXXXX) #creates a local directory(file path is not output)
testtempdir1=$(mktemp -dt testtempdir1.XXXXXX) #creates a directory in /tmp(output abasolute path)
echo

# prints new temp directory absolute path
echo "This is a local directory named: $testtempdir"
echo "This is a directory in: $testtempdir1"
echo

# moves into the new directory
cd $testtempdir
# creates new files which also and outputs result to the screen
# as usual with mktemp
mktemp localtestfile.XXXXXX
mktemp localtestfile.XXXXXX
echo
ls -lh #list the content of the new directory
cd $currentlocation # moving back to parent directory
rm -rf $testtempdir

echo


cd $testtempdir1
# creates new files which also and outputs result to the screen
# as usual with mktemp
mktemp temptestfile.XXXXXX
mktemp temptestfile.XXXXXX
echo
ls -lh #list the content of the new directory
cd $currentlocation # moving back to parent directory
echo

rm -rf $testtempdir1
echo

# confirming file is remove and notifying user of the script
if [ -d $testtempdir ]
then 
    echo "$testtempdir was not removed"
else
    echo "$testtempdir was successfullly removed"
fi
echo

if [ -d $testtempdir1 ]
then 
    echo "$testtempdir1 was not removed"
else
    echo "$testtempdir1 was successfullly removed"
fi
echo

