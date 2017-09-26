#!/bin/bash
source prompt.sh
#reverse a number from a given number from a current number
#enter the choicenumber as chno
echo "enter the number"
read chno
#intialise the reversenumber to 0
rev=0
#take one variable sd and intialise it to 0
sd=0
#intialise originalnumber as the choicenumber
or=$chno
while [ $chno -gt 0 ]
do
#this will give the remainder
sd=$(($chno % 10))
#this will be used to print the numbers in the same line
rev=$(($rev * 10  + $sd))
#this will be used to store quotient value so that it can be used further
chno=$(($chno / 10))
done
echo "$or is $rev"
promptuser rev.sh
