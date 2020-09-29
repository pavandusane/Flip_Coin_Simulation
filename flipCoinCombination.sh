#!/bin/bash

echo "welcome to flip coin simulation problem"

num=$(( $RANDOM % 2 ))
if [ $num -eq 0 ]
   then
        echo "Head"
else
        echo "Tail"
fi
