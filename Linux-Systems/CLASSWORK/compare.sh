#!/bin/bash

echo "Enter the first number n1"
read n1
echo "Enter the second number n2"
read n2
echo "Enter the third number n3"
read n3

#comparing using only relational operators

if [ $n1 -gt $n2 ]
then

if [ $n1 -gt $n3 ]
then
echo " $n1 is the greatest "
fi

elif [ $n2 -gt $n1 ]
then 
if [ $n2 -gt $n3 ]
then
echo " $n2 is the greatest "
fi

elif [ $n3 -gt $n1 ]
then 
if [ $n3 -gt $n2 ]
then 
echo "$n3 is the greatest"
fi

fi
