#!/bin/bash

echo -n "PROVIDE YOUR NAME"
read name

if [[ $name =~ ^[0-9A-Za-z]+$ ]]
then
  echo -n "PROVIDE YOUR EMAIL"
  read email
       
          if [[ "$email" =~ ^[A-za-z0-9]+@[A-Za-z0-9]+\.[A-Za-z]{3,5}$ ]]
            then
                      echo -n "PROVIDE YOUR MOBILE NUMBER"
                      read mobno
 
                                if [[ "$mobno" =~ ^[0-9]{10}$ ]]
                                   then
                                          echo -n "PROVIDE YOUR DATE OF BIRTH IN THE FORMAT:(dd/mm/yyyy)"
                                          read dob
                                             
                                                  if [[ "$dob" =~ ^[0-9]{1,2}/[0-9]{1,2}/[0-9]{4}$ ]]
                                                      then

                                                             echo -n "PROVIDE FROM WHICH PLACE YOU ARE FROM"
                                                             read place
                       
                                                                   if [[ "$place" =~ [A-Za-z] ]]

