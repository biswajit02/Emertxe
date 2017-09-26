#!/bin/bash

#progrom for nestedif condition

echo "Enter the first number (A) :"
read a
echo "Enter the second number (B) :"
read b
echo "Enter the third number (C) :"
read c

#Using conditional and logical operators
if [ $a -gt $b -a $a -gt $c ]
then
echo "A is the greatest"
elif [ $b -gt $a -a $b -gt $c ]
then
echo "B is the greatest"
elif [ $c -gt $a -a $c -gt $b ]
then
echo"C is the greatest"
else
echo "Invalid output"
fi
