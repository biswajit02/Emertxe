#!/bin/bash

source prompt.sh
<<programinfo
Print Informations:
1. Currently logged user
2. Your shell directory
3. Home directory
4. OS name and version
5. Current working directory
6. Number of users logged in
7. Show all available shells in your system
8. Hard disk information
9. CPU information
10. Memory information
11. file system information
12. Currently running process
programinfo

#------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------START OF THE PROGRAM-------------------------------------------------------------------

echo "Enter the option from 1-13 to get the particular information:
1. Currently logged user
2. Your shell directory
3. Home directory
4. OS name and version
5. Current working directory
6. Number of users logged in
7. Show all available shells in your system
8. Hard disk information
9. CPU information
10. Memory information
11. file system information
12. Currently running process"

echo -n "Choice: " 

read option

case $option in
	1) echo "Currently logged user:`users`" ;;
      # 1) echo "Currently logged user:`whoami`";;

	2) echo "Your shell directory:$SHELL" ;;

	3) echo "Home directory:$HOME";;

	4) echo -n "operating system name is:`uname -ov | cut -d '~' -f 2 | cut -d ' ' -f 1,9`";; 

	5) echo "Current working directory:`pwd`";;

	6) echo -n "Number of users logged in is:`users | wc -w`";;

        7) echo "all available shells in the system:`cat /etc/shells`";;

        8) echo "Hard disk information:`sudo lshw`";;
	   
        9) echo "CPU information:`cat /proc/cpuinfo`";;
	  
        10)echo "Memory information:`cat /proc/meminfo`";;
	   
        11)echo "file system information:"` df -H`;;

        12)echo "Currently running process:"`ps -aux|more`;; 
	   
         *)echo "Invalid option:" ;;

esac


promptuser info.sh
#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------END OF THE PROGRAM-----------------------------------------------------------------
