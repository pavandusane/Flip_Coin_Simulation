#!/bin/bash

echo "welcome to flip coin simulation problem"

count=0
count1=0
while [ true ]
do
num=$(( $RANDOM % 2 ))
echo $num
if [ $num -eq 0 ]
   then
        echo "Head"
        ((count++))
else
        echo "Tail"
        ((count1++))
fi
if [ $count -eq 21 ]
   then
        echo "Head is more"
        break
elif [ $count1 -eq 21 ]
   then
        echo "Tail is more"
        break
else
        echo "Fail"
fi
done
echo "Head Won : $count"
echo "Tail Won : $count1"

if [ $count -lt $count1 ]
then
    res1=$(( $count1 - $count ))
    echo "Tail is won by $res1 point"
elif [ $count1 -lt $count ]
then
    res2=$(( $count - $count1 ))
    echo "Head is won by $res2 point"
elif [ $count1 -eq $count ]
then
	echo "It is tie"
fi


