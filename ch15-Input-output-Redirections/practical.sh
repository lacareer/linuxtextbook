#!/bin/bash

###############################################################################
echo 
echo "This  show a practical way to create SQL insert statements from an comma delimited CSV file"
echo
###############################################################################

# name of input csv file: members.csv (each line contains a user info that is comma delimited )
# name of output sql file: members.sql
# ${1} = means first option passed in the command line(file where to read data from)
# EOF ..... EOF = encloses the content to be be redirected to the otput file
# run script like this: ./practical.sh < members.csv
# note that the ending EOF must be indented as shown above, otherwise it throws an error
# Also there must be no space/tab after the last EOF. 
# MAKE SURE YOUR CURSOR STOPS AT THE 'F' IN EOF. No space/s or tabs after it.
# Then use the enter key to move to the next line
# name of file to output result to
outfile='members.sql'
inputfile=$1
echo $inputfile
oldIFS=$IFS #stores default IFS
IFS=$',' # Creates a custom IFS

while read lname fname address city state zip
do
    # Appends contents between EOF.....EOF  to the output file
    # 
    cat >> $outfile << EOF 
    INSERT INTO members (lname,fname,address,city,state,zip) VALUES
    ('$lname', '$fname', '$address', '$city', '$state', '$zip');
EOF
done < "$1"
IFS=$oldIFS # reset to default IFS