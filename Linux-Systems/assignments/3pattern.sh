#!/bin/bash

#pattern_2 using for loop
 
  echo "Enter the number "
  read csc
  count=1
#for loop for calculating the rows
  for (( row=1; row<=csc; row++ ))
  do
#for loop for calculating the columns
  for (( col=1; col<=row; col++ ))
  do
  echo -n $count 
  count=`expr $count + 1`
  done
  echo
  done
#prompt the user to continue using if elif
  echo "Do you want to continue [Y/N] ?"
  read  input
 
 if [ $input == "Y" ]
 then
 bash 3pattern.sh
 elif [ $input == "N" ]
 then
       exit
else
echo "Invalid Input"
fi

