#!/bin/bash

source prompt.sh
<<programinfo
in this program we have to take input from /etc/passd then show the longest and shortest username
programinfo

#------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------START OF THE PROGRAM-------------------------------------------------------------------
#accesing /etc/passwd
arr=(`cat ../../../etc/passwd | cut -d ':' -f 1`)
echo " "
#printing the contents 
echo "${arr[@]}"
#intialising the contents to a variable
n=${#arr[@]}
echo " "
echo "no of usernmaes $n"

#using the loop condition compare 
for (( i=0;i<$n; i++ ))
   do
      
     for (( j=$(($i+1)); j<$n; j++ ))
        do
           
              if [ ${#arr[i]} -gt ${#arr[j]} ]
                then
                       t=${arr[i]}
                       arr[$i]=${arr[j]}
                       arr[$j]=$t
              fi
        done

  done

echo " "

#printing the longest and shortest usernames
echo "${arr[@]}"
echo " "
echo "the longest username is:${arr[$n-1]}"
echo "the shortest username is:${arr[0]}"

promptuser ass21.sh
#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------END OF THE PROGRAM-----------------------------------------------------------------
