#!/bin/bash

###############################################################################
echo 
echo "This scripts shows how to create temporary files in /tmp"
echo "This can be  done using the 'mktemp -d filename.XXXXXX' command for local temp directory or"
echo "The'mktemp -dt filename.XXXXXX' command for temp directory in /tmp"
echo
###############################################################################

# creating a temp directory in the linux /tmp  directory
# To do so, you must pass the -d option when creating the directory, it
# creates a local directory
# Note that when you pass the -dt(means creta temp directory in the /tmp) option, the mktemp
# command returns the absolute/full path of the newly created directory
# when the command executes successfully, 

testtempdir=$(mktemp -d testtempdir.XXXXXX) #creates a local directory
testtempdir1=$(mktemp -dt testtempdir1.XXXXXX) #creates a directory in /tmp
echo

# prints new temp directory absolute path
echo "This is a local directory named: $testtempdir"
echo "This is a directory in: $testtempdir1"
echo

# creating files in the newly created  directories

cd $testtempdir
mktemp localtestfile.XXXXXX
mktemp localtestfile.XXXXXX
echo
ls -lh $testtempdir
cd $testtempdir1
mktemp temptestfile.XXXXXX
mktemp temptestfile.XXXXXX
echo
ls -lh $testtempdir1

echo

rm -rf $testtempdir $testtempdir1
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

