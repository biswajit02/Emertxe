#!/bin/bash

source colour.sh
#if the user is not registered ,then user have to give new username and password
function user()
{
echo -e "$blue $bold CHOOSE THE USERNAME $normal"
read username 

a=(`cat username.txt`)
count=0

if [[ $username =~ ^[a-zA-Z0-9]+$ ]]
     then
                        for (( i=0; i<${#a[@]}; i++ ))
                          do 
         if [ $username == ${a[$i]} ]
       
             then
                     count=1
                     echo -e "$red $bold USERNAME ALREADY EXIST$normal"
                              user
                     
         fi
                          done
else
        echo -e "$red $bold USERNAME FIELD CAN NOT BE EMPTY$normal"
            user
fi
                      if [ $count=0 ]
                          then
                               echo $username >> username.txt
                      fi
}
   user



function passwd()
{
echo -e "$red $bold PASSWORD SHOULD CONSISTS MINIMUM OF 8 CHARACTERS & ALPHA-NUMERIC CHARACTERS $normal"
echo " "
echo -e "$red $bold CHOOSE YOUR PASSWORD $normal"
read -s password
          

a=${#password}
if [ $a -ge 8 ]
then
      # if [[ $password == *[@'!'$%^*()]* ]]
        if [[ $password =~ [A-Za-z]+ ]]
           then
               if [[ $password =~ [0-9]+ ]]
                  then
        echo " "
        echo -e "$blue $bold CONFIRM PASSWORD $normal"
        read -s  passwordconfirm

                         if [ $password != $passwordconfirm ]
                              then
                                   echo -e "$red $bold PASSWORD MISMATCH $normal"
                                              passwd


                         elif [ $password = $username ]
                                  then
                                     echo -e "$red $bold USERNAME AND PASSWORD CAN NOT BE SAME$normal"

                         else
                                  echo $password >> password.txt
                                  echo -e "				$green $bold THANK YOU FOR REGISTERING WITH MTEST$normal" 
                                  echo " "
                                  echo " "
                                  echo -e "			      $yellow $bold YOU ARE BEEN REDIRCTED TO SIGNIN PAGE$normal"
                                               
                                                                                          bash signin.sh
                                                   
                           fi
       else
            echo -e "$red $bold IT SHOULD CONTAIN ALPHANUMERIC CHARACTERS $normal"
                    passwd
       fi
         else
              echo -e "$red $bold IT SHOULD CONTAIN ALPHANUMERIC CHARACTERS $NORMAL"
         fi
       
else
     echo -e "$red $bold PASSWORD CAN NOT BE LESS THAN 8 CHARACTERS $normal"

       passwd
fi 
}
passwd
                    
