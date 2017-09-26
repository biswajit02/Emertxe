#!/bin/bash

source colour.sh                                         
                              echo -e "$bold $yellow INSTRUCTIONS FOR THE ASSESMENTS FOR MODULE 1:LINUX SYSTEMS
1.THE ASSESMENT CONTAINS 10 QUESTIONS
2.ATTENDING ALL QUESTIONS IS COMPULSORY
3.NO NEGATIVE MARKING
4.DURATION OF THE TEST IS 5 MINUTES :EACH QUESTION WILL HAVE THE DURATION WHICH WILL BE 30 SECONDS
5.IF ANY ONE FOUND CHEATING OR USING ANY ELECTRONIC GADGETS WILL BE TERMINATED
6.EACH QUESTION CARRIES 1 MARKS
7.IF YOU TYE INVALID INPUT RATHER THAN a,b,c,d :you will be redirected to next question and marks awarded will be 0 
                                                         ALL THE BEST :) $normal"
echo -e "                    $bold $blue 1)TAKE TEST $normal"
echo -e "                    $bold $blue 2)LOG OUT $normal"

echo " "
echo -e "$bold $red CHOOSE YOUR OPTION$normal"
read option

case $option in
1) echo "$green YOU ARE BEING REDIRECTED TO ASSESMENT$normal "
          bash que.sh;;  
2) exit;;
*) exit
esac                      
                                    
