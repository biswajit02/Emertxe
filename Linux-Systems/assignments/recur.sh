#!/bin/bash

source prompt.sh
<<programinfo
1. ./rec_fun.sh 5 2 4 1 n kj i

5
2
4
1
n
kj
i
programinfo

#------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------START OF THE PROGRAM-------------------------------------------------------------------
#initialise the function
echo $1
echo $((1+$1))



<<c
function recurse ()
{
echo "$1"

recurse $1+1

promptuser recur.sh
c
#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------END OF THE PROGRAM-----------------------------------------------------------------
