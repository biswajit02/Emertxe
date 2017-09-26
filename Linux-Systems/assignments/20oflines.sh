#!/bin/bash

source prompt.sh


#------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------START OF THE PROGRAM-------------------------------------------------------------------
#capturing the count of lines
linecount=`cat $1 | wc -l`

#displaying the contents 
echo $linecount

#calculating the percentage
per=`echo "$linecount*20/100"|bc`

echo $per
#shuffle command 
   arr=(`shuf -i 1-$linecount -n $per`)
   echo ${arr[@]}
for (( i=0; i<$per; i++ ))
do
#using sed command replacing the lines with del
      sed -i "${arr[$i]}s/.*/<------DEL----->/" $1
done











promptuser 20oflines.sh
#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------END OF THE PROGRAM-----------------------------------------------------------------
