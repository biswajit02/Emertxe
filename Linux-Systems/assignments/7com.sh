#!/bin bash
source prompt.sh
#compare larger integer values from a n number of arguments using command line arguments

#give the inputs of the elements of an array

declare -a largestnumber=("$@")

#print all entered elements
#echo "entered array is ${largestnumber[@]}"

max=0

#for(( i=0; i<=${#largestnumber[@]}; i++ ))
for i in ${largestnumber[@]}
do
if [ $i -gt $max ]
then 
max=$i
fi
done


echo "maximum number in the array is $max"
promptuser 7com.sh
