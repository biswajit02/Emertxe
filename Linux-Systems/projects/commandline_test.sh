#!/bin/bash

#PROJECT FOR COMMAND LINE TEST
source colour.sh
#--------------------------------------------------------START OF THE PROGRAM------------------------------------------------------------------------------

#PROMPT THE USER TO SIGN IN IF ALREADY A USER OR SIGN UP TO REGISTER
echo -e "						$bold $blue HOMEPAGE $normal"
echo " "
echo " "
echo -e "$green $bold 1.SIGN IN$normal

$yellow $bold 2.SIGN UP$normal

$magenta$bold 3.EXIT$normal "
echo " "
echo -e "   				$blue $bold SIGN UP IF DIDN'T REGISTERED WITH MTEST $normal"
echo " "
echo -e "			     $blue $bold OR SIGN IN WITH MTEST TO ATTEND THE ASSESMENT $normal" 
 
						
read choice

case $choice in

1) echo -e "						$blue $bold LOG IN PAGE $normal"
   bash signin.sh;;

2) echo -e "						$blue $bold SIGN UP PAGE $normal" 
   bash signup.sh;;

*) exit
esac
     
