#!/bin/bash

#declare -a unix=('debian' 'redhat' 'ubuntu' 'sesu' 'fedora')
echo " input the values"
read -a unix

#method1
echo "Printing contents of array at one shot: ${unix[@]}" 
#method2
echo "Printing contents of array at one shot: ${unix[*]}"

echo "Prnting values of an array using for loop."
for ((i=0; i < ${#unix[@]}; i++))
do
 echo ${unix[$i]}
done

