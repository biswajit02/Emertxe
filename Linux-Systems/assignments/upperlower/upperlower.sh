#!/bin/bash

source ../prompt.sh


#------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------START OF THE PROGRAM----------------------------------------------------------------
#capturing the directories
dir=(`find -type d | cut -d '.' -f 2 | cut -d '/' -f 2`)

#capturing the files
file=(`find -type f | cut -d '.' -f 2 | cut -d '/' -f 2`)

#displaying 
echo ${dir[@]}
echo ${file[@]}

#applying the loop
for (( i=0; i<=${#dir[@]}; i++ ))
do
#condition for directory to change from lower case to upper case
var=(`echo ${dir[i]} | tr [:lower:] [:upper:]`)
echo "$var"
echo "${dir[i]}"
mv ${dir[i]} $var
done

#applying loop condition
for (( i=0; i<=${#file[@]}; i++ ))
do
#condition for files to change from upper case to lower case
var=(`echo ${file[i]} | tr [:upper:] [:lower:]`)
echo "$var"
echo "${file[i]}"
mv ${file[i]} $var
done

promptuser
#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------END OF THE PROGRAM-----------------------------------------------------------------
