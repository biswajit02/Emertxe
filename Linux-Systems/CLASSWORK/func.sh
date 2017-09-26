#!/bin/bash

#Function defination
function sum()
{
x=`expr $1 + $2`
echo $x
}
#calling the function
sum 6 4
echo "The sum of 4 and 7 is `sum 4 7`"
