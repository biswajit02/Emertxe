#!/bin/bash

source prompt.sh


#------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------START OF THE PROGRAM-------------------------------------------------------------------

echo "hello" >> feedloop.txt
cat feedloop.txt | tail -n 1 -f feedloop.txt >> feedloop.txt










promptuser
#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------END OF THE PROGRAM-----------------------------------------------------------------