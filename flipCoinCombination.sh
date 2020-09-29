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
	let count1++
  else
        echo "Tail"
	let count2++
  fi
done

echo "Head Won : $count1"
echo "Tail Won : $count2"

