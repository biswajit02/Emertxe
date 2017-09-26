#!/bin/bash

source prompt.sh

#------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------START OF THE PROGRAM-------------------------------------------------------------------
#program for find a range of userid between the given range
arruser=(`cat /etc/passwd | cut -d ':' -f 1`)
arrid=(`cat /etc/passwd | cut -d ':' -f 3`)

#echo ${arruser[@]}
#echo ${arrid[@]}
count=0

#intialise the function
function number()
{
   echo $1 $2
#taking loop
   for (( i=0; i<${#arrid[@]}; i++ ))
       do
 
             if [ ${arrid[$i]} -ge $1 -a ${arrid[$i]} -le $2 ]
                then
                      var=${arruser[$i]}
                      echo ${arrid[i]}- $var
  
                      count=$(($count+1)) 
              fi
       done
                 echo "the no of ids between $1 and $2 are : $count"
}
#calling the function
#number $1 $2

if [ $# -eq 0 ]
   then
        number  500 10000
elif [ $# -eq 2 ]
    then
         number  $1 $2
else
       echo "enter valid arguments"
fi


promptuser noofusers.sh
#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------END OF THE PROGRAM-----------------------------------------------------------------
