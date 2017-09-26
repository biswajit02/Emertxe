#!/bin/bash

source prompt.sh
<<programinfo
1. ./user_search.sh Enter the user you want to search xyz xyz not present

2. ./user_search.sh Enter the user you want to search root root is present
programinfo

#------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------START OF THE PROGRAM-------------------------------------------------------------------
#initialising all usernames to an array
arr=(`cat ../../../etc/passwd | cut -d ':' -f 1`)

#displaying all the count
n=${#arr[@]}
#displaying the contents of an array
echo " "
echo ${arr[@]}
echo " "
echo "Number of usernames: $n"

echo "Enter the user name"
read username

for (( i=0; i<${#arr[@]}; i++))
      do
        #comparing the username with the array
           if [ $username == ${arr[i]} ]
               then
                   var=$username
        #if that username is present then print user is present
                   echo "user is present"
            fi
      done
                
              if [ "$var" != "$username" ]
                 then
        #else print that username is not present
                    echo "user is not present"

              fi

promptuser usersearch.sh
#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------END OF THE PROGRAM-----------------------------------------------------------------
