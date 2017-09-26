#!/bin/bash

#to delete the file

echo "enter the files extension you want to delete"
read ext

arr=(`find . -name "$ext"`)

for (( i=0; i<${#arr[@]}; i++ ))
do
 rm ${arr[i]}
done
