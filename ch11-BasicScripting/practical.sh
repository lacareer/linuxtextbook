#!/bin/bash

# This script is a practical of all discussed in chapter 11
# This scripts calculates the  number of days betweeen two dates

# 1st step: we pick 2 dates in in linux acceptable format

date1="Jan 1, 2020"
date2="May 1, 2020"

# 2nd step: convert our chosen dates to linux epoch times(epoch time is number of seconds since 1970 midnight)
# the -d flag allows you to enter a chosen date format. In this case, date1 and date2
# %s indicates seconds: change that  date to second counting from 1970 midnight

time1=$(date -d "$date1" +%s)
time2=$(date -d "$date2" +%s)

diff=$[$time2 - $time1]
secondsInDays=$[24 * 60 * 60]
days=$[$diff / $secondsInDays]

echo
echo "The difference between $date2 and $date1 is $days in days"
echo



