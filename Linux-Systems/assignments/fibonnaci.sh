#!/bin/bash
source prompt.sh
#enter the inputs
echo "enter the value"
read csc
count=1
#declare an array fib 
declare -a fib=(0 1)
#using for loop display the results from 3rd number
for ((i=2; i<=csc; i++))
do
fib[i]=$((${fib[i-2]}+${fib[i-1]}))
#using if statement analyze the values
if [ ${fib[i]} -le $csc ]
then
count=$i
#print the the fibonnaci series  
echo "${fib[$i]}"
echo "${fib[@]}"
else 
#exit the program
exit
fi
done
fib=${count}
echo "the greatest fibonnaci value is:$fib"
promptuser fibonnaci.sh
