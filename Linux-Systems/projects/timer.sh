#!/bin/bash
function timer()
{
count=30
while(( count > 0))
do
sleep 1
count=$(($count-1))
echo -ne "$blue $bold:GIVE INPUT HERE$normal                                                                  $red$bold TIME REMAINING:$normal$count\033[0K\r" 
#if [ $count < 10 ]
#then
 #    echo -e "$red $bold WARNING LAST 10 SECONDS REMAINING $normal"
#fi
done
}

#timer
<<k
secs=$((5 * 60))
while [ $secs -gt 0 ]
do
echo -ne "$secs\033[0K\r"
sleep 1
: $((secs--))
done
k
