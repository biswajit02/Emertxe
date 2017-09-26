#!/bin/bash

echo "Enter the number n"
read n

case $n in
1) echo value of x is one.;;
2) echo value of x is two.;;
3) echo value of x is three.;;
4) echo value of x is four.;;
*) echo invalid input.;;
esac
