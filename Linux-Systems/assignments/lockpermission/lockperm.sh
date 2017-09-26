#!/bin/bash

source ../prompt.sh
<<programinfo
. ./file_lock.sh Dir/ Before locking total 0 ­rw­rw­r­­ 1 biju biju 0 Jun  8 12:37 D2file1 ­rw­rw­r­­ 1 biju biju 0 Jun  8 12:37 D2file2 ­rw­rw­r­­ 1 biju biju 0 Jun  8 12:37 D2fil
After locking total 0 ­rw­­­­­­­ 1 biju biju 0 Jun  8 12:37 D2file1 ­rw­­­­­­­ 1 biju biju 0 Jun  8 12:37 D2file2 ­rw­­­­­­­ 1 biju biju 0 Jun  8 12:37 D2file3
programinfo

#------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------START OF THE PROGRAM-------------------------------------------------------------------
#if conditions for checking the arguments are passed or not
if [ $# -gt 0 ]
then
#capturing the files
       filename=(`find $1 -type f | cut -d '/' -f 2`)
      echo ${filename[@]}
#applying the loop        
   for (( i=0; i<${#filename[@]}; i++ ))
      do
#applying chmod condition for locking
           chmod 600 ${filename[i]}
      done
          ls -al
  else 
 #if arguments are not passed 
       echo "[error in input]"
fi

promptuser lockperm.sh
#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------END OF THE PROGRAM-----------------------------------------------------------------
