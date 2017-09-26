#!/bin/bash
source prompt.sh
<<arithmeticcalculator
here we have to show basic calculator funtions performing addition,subtraction,division,multiplication
arithmeticcalculator

<<userinputmethod
echo "Enter the first number n1"
#read n1
echo "enter the first number n2"
read n2
userinputmethod
#using command line argument
operator1=$1
operator2=$3
operand=$2

<<userinputmethod
echo " what operation you want to perform: 1:addition
                                           2:subtraction
                                           3:multiplication 
                                           4:division"
read operation
userinputmethod

case "$operand" in
"+") math=$(bc <<< $operator1+$operator2) ;;
"-") math=$(bc <<< $operator1-$operator2) ;;
"x") math=$(bc <<< $operator1*$operator2) ;;
"/") math=$(bc <<< $operator1/$operator2) ;;
*) echo "invalid operation"
esac
echo $math
promptuser arthcalc.sh
