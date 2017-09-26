#!/bin/bash

source prompt.sh
<<programinfo
1. ./rand_password.sh nH@Rh0Pv O8ug&HfD ro0IUJ$f wx!Kox3U i3?BkomA S89R%OA3 #e3v8PzS d?F8TEo6 Lrb­qvl9 T!ilf1C5

programinfo

#------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------START OF THE PROGRAM-------------------------------------------------------------------
#applying the code to create the ranom password

#fold will be used for how many digits password you need

#-c will be used to do complement

#-d will be use to do delete
cat /dev/urandom | tr -cd 'a-zA-Z0-9!@#$&*' | fold -w 8 | head -n 1










promptuser rapasswd.sh
#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------END OF THE PROGRAM-----------------------------------------------------------------
