#!/bin/bash

###############################################################################
echo 
echo "This scripts shows the various Signals in Linux"
echo 
######## 

echo "Signal                  Value                   Description"
echo""
echo "1                       SIGHUP                  Hang up the process"
echo "2                       SIGINT                  Interrupts/stops the process(CTRL+C)"
echo "3                       SIGQUIT                 Stops the process "
echo "9                       SIGKILL                 Unconditionally terminate the process "
echo "15                      SIGTERM                 Terminate the process if possible "
echo "18                      SIGCONT                 Continues a stopped process"
echo "19                      SIGSTOP                 Unconditionally stops, but dosn't terminate the process"
echo "20                      SIGSTP                  Stops or pause the process, but doesn't terminate it(CTRL+Z)"
echo

# The Bash shell ignores signal 3 and 15 by default
# But it does not ignore signal 1 and 2

echo "      Readup ch16 of text on how to 'trap' the above signals, 
      run a script in the abackground,
      run a script with the 'at' command
      and how to schedule a script using 'cron' and 'anacron"

echo