#!/bin/bash

source colour.sh
function sign()
{
echo -e "$blue $bold ENTER THE USERNAME $normal"

read username

echo -e "$green $bold ENTER THE PASSWORD$normal "
read password

a=(`cat username.txt`)
b=(`cat password.txt`)
c=${#a[@]}

count=0
for (( i=0; i<$c; i++ ))
do
    if [ "$username" == ${a[i]} ] && [ "$password" == ${b[i]} ]
        then
             count=1
              echo -e "$green $bold LOGGED IN $normal$blue $bold WELCOME TO MTEST PORTAL $normal"
              echo " "
              echo -e "$yellow$bold YOU ARE BEING REDIRECTED TO TEST $normal"
                                   bash instructions.sh        
              
  fi       
done     
 
     if [ $count = 0 ]
       then
          echo -e "$red $bold _INCORRECT_USERNAME_OR_PAASWORD_$normal"
               sign
  fi
}
        sign

