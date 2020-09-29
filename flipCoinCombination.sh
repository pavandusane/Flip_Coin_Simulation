#!/bin/bash
declare -A dict1

count1=0
count2=0

echo "welcome to flip coin simulation problem"


for (( i=1;i<=20;i++ ))
do
num=$(( $RANDOM % 2 ))
  if [ $num -eq 0 ]
    then
        echo "Head"
	##count1=(($count1+1))
	let count1++
  else
        echo "Tail"
	##count2=(($count2+1))
	let count2++
  fi
done

echo $count1
echo $count2

dict1[Head]="$count1"
dict1[Tail]="$count2"

percentage_of_head=$(( $count1 * 5 ))
percentage_of_tail=$(( $count2 * 5 ))

echo "Percentage_of_head : $percentage_of_head"
echo "Percentage_of_tail : $percentage_of_tail"
