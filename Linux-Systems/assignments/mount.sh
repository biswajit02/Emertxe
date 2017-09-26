#!/bin/bash

source prompt.sh

#------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------START OF THE PROGRAM-------------------------------------------------------------------
#capturing the filesystem info
filesystem=(`df --output=source`)
#capturing available space
available=(`df --output=avail`)
#capturing used space
used=(`df --output=pcent`)

echo ${filesystem[@]}
echo ${available[@]}
echo ${used[@]}

#applying loop
for (( i=0; i<${#filesystem[@]}; i++ ))
do
    if [ "${filesystem[$i]}" == $1 ]
     then
             echo "filesystem $1 is ${used[i]} used with ${available[i]}kb free"
   fi
done


promptuser mount.sh
#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------END OF THE PROGRAM-----------------------------------------------------------------
