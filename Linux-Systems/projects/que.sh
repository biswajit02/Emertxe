#!/bin/bash
source colour.sh
source timer.sh
function question()
{
random=(`shuf -i 1-10 -n 10`)
originalans=(`sed 's/;/ /g' ans.csv`)
total=0
count=1
for (( i=0; i<10; i++ ))
do
         clear
       echo -n "($count)"	
	 bash questions.sh ${random[i]}
        count=$(($count+1))
        echo " "
        
	timer &         
        read -t 30 answer
        kill $!
clear         
if [[ $answer =~ ^[a-d]+$ ]]
            then
               echo $answer >> useranswer.txt
         else
               echo -e "$bold $red INVALID INPUT:MARKS AWARDED WILL BE 0$normal"
               echo 0 >> useranswer.txt
                     
         fi
clear
done
     
          
userans=(`cat useranswer.txt`)
correctans=()

for (( j=0; j<10; j++ ))
do
    index=${random[j]}
correctans+=(${originalans[$index-1]})
done
#echo ${correctans[@]}
#echo ${userans[@]}

for (( k=0; k<10; k++ ))
  do
    if [ ${correctans[k]} == ${userans[k]} ]
   then
        total=$(($total+1))
    fi
  done


echo -e "$bold $green test score is $total $normal"
if [ $total -ge 5 ]
then
    echo " "
    echo -e "$blue $bold CONGRATULATIONS YOU HAVE CLEARED THE MODULE 1 AND NOW YOU ARE ELIGIBLE TO TAKE NEXT MODULE$normal"
else
   echo -e "$red $bold SORRY YOU DIDN'T CLEARED MODULE 1,RETAKE THE MODULE 1 ASSESMENT TO TAKE NEXT MODULES $normal"
fi 
}
question
function view()
{
echo " "
echo -e "$yellow $bold 1.VIEW TEST
2.RETAKE TEST IF YOU ARE NOT ELIGIBLE
3.EXIT       $normal"

echo " "
echo -e "$red $bold CHOOSE FROM THE ABOVE $normal"

read choice

case $choice in 
1) number=1
 
               for (( i=0; i<10; i++ ))
              do
                    echo -n "[$number]"
                    bash questions.sh ${random[i]}
                   number=$(($number+1))
                          echo -e "$bold $green CORRECT ANSWERS:$normal ${correctans[i]}"
                          echo " "
                          echo -e "$bold $blue USER ANSWERS:$normal ${userans[i]}"
              done
        

rm useranswer.txt
view;;
2) rm useranswer.txt 
question
view;;
3) exit
  rm useranswer.txt

esac
}
view
