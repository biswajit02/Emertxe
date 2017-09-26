#!/bin/bash
source prompt.sh
#---------------------------------------------------------START OF THE PROGRAM--------------------------------------------------------------------------------

#to print the length of each and every string 

#declare an array using command line arguments
declare -a arr=($@)

#using for loop check the condition
for ((i=0; i<$#; i++))
do

#print the length of the string values
echo "${arr[i]}=${#arr[i]}"

done

promptuser ass12.sh
#-----------------------------------------------------------END OF THE PROGRAM--------------------------------------------------------------------------------
