#!/bin/bash

#source prompt.sh


#------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------START OF THE PROGRAM-------------------------------------------------------------------
#capturing the hour part from the time
time=`date +%H`

#now applying the if condition for good morning
if [ $time -ge 9 -a $time -le 14 ]
    then
         echo "Good morning Biswajit Das,Have a nice day!"
         echo "this is `date`"
#for good afternoon
elif [ $time -ge 14 -a $time -le 16 ]
     then
          echo "Good afternoon Biswajit Das"
          echo "this is `date`"
#for good evening
elif [ $time -ge 16 -a $time -le 21 ]
     then
          echo "Good evening Biswajit Das"
          echo "this is `date`"
#for good night
else [ $time -ge 21 -a $time -lt 9 ]
     
          echo "Good night Biswajit Das"
          echo "this is `date`"
fi

#promptuser sayhello.sh
#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------END OF THE PROGRAM-----------------------------------------------------------------
