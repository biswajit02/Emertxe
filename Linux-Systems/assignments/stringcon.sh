#!/bin/bash

source prompt.sh
<<programinfo
1. ./lower_upper.sh file.txt 1 – Lower to upper 2 – Upper to lower
Please select option : 2 WHAT IS OS?  WHAT ARE THE DIFFERENT OS?  WHEN IS OS USED? WHAT IS PARTITION AND ITS USE? HOW MANY PARTITIONS CAN BE DONE? 2. ./lower_upper.sh file.txt 1 – Lower to upper 2 – Upper to lower Please select option : 1 what is os?  what are the different os?  when is os used? what is partition and its use? how many partitions can be done?

programinfo

#------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------START OF THE PROGRAM-------------------------------------------------------------------
echo "please select an option:
      1.Conversion from lower to upper case letters
      2.Conversion from upper to lower case letters"

echo -n "choice"
read option

case $option in
 
1)#change from lower to upper
  echo "$1" | tr [:lower:] [:upper:];;
2)#change from uper to lower
  echo "$1" | tr [:upper:] [:lower:];;

*)echo "invalid input";;

esac


promptuser stringcon.sh 
#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------END OF THE PROGRAM-----------------------------------------------------------------
