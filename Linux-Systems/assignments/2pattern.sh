#!/bin/bash

#printing the pattern_1 using for loop

echo "Enter the number"
read pattern

for (( row=1; row<=n; row++ ))
do
for (( col=1; col<=row; col++ ))
do
echo -n " $col "
done
echo
done

#prompt the user to continue using if elif
echo "Do you want to continue [Y/N] ?"
read  input

if [ $input == "Y" ]
then
bash 2pattern.sh
elif [ $input == "N" ]
then 
      exit
else
echo "Invalid Input"
fi
