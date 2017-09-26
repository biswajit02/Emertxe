#prompt the user to continue using if elif
function promptuser ()
{ 
  echo "------------------------------------------------Do you want to continue [Y/N] ?----------------------------------------------------------------------" 
read  input 
         if [ $input == "Y" ]
 then
 filename=$1 
 bash $filename
         elif [ $input == "N" ]
  then
        exit
  else
  echo "Please give the valid input"
  echo "-----------------------------------------------------SEE YOU SOON GOTTA GO---------------------------------------------------------------------------"
  fi
}
