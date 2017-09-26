#!/bin/bash

source prompt.sh
<<programinfo
print only the fifith line of /etc/passwd
programinfo

#------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------START OF THE PROGRAM-------------------------------------------------------------------
#enter the line number
echo "INPUT:enter the line number"
read linenumber

#print the contents of selected line
echo "OUTPUT:content in $linenumber"
sed -n $linenumber\p /etc/passwd


promptuser 5tline.sh
#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------END OF THE PROGRAM-----------------------------------------------------------------
