#!/bin/bash
source prompt.sh 
#Prompt the user to enter the 1st no
echo "Enter first no"

#Read 1st no and store it in a var
read num1

#Prompt the user to enter the 2nd no
echo "Enter second no"

#Read 2nd no and store it in a var
read num2

#add two numbers and store it in a var
#method 1 of addition using expr
#sum=`expr $num1 + $num2`

#method 2 of addition using bc
#sum=`echo "$num1 + $num2" | bc`
#sum=$(bc <<< $num1+$num2)

#method 3 of addition using ((  ))
#sum=$(($num1 + $num2))

#Display the result
 echo "$num1 + $num2 = $sum"
promptuser add.sh

