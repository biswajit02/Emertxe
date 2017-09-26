#!/bin/bash

#simple usage of while loop
loop=1
while [ $loop -le 5 ]
do
echo "looping : $loop"
loop=`expr $loop + 1`
done
