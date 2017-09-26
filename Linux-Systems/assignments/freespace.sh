#!/bin/bash

source prompt.sh


#------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------START OF THE PROGRAM-------------------------------------------------------------------
#capturing systemfile
filesystem=(`df --output=source`)

#capturing the used%file
used=(`df --output=pcent | cut -d '%' -f 1`)
echo ${filesystem[@]}
echo ${used[@]}

#enter the usage
echo "enter the usage"
read usage
count=0
for (( i=1; i<${#used[@]}; i++ ))
do 
          if [ ${used[$i]} -ge $usage ]
           then
                 count=$(($count+1))
               echo " the filesystem: ${filesystem[i]} has the usage of ${used[i]} with free space in the disk is: $((100-${used[i]}))%"

          fi
done 
       if [ $count -eq 0 ]
       then
           echo " no such file has free space of $((100-$usage))%"
       fi


promptuser freespace.sh
#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------END OF THE PROGRAM-----------------------------------------------------------------
