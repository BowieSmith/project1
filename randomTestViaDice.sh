#!/usr/bin/env bash

#randomTestViaDice.sh

#This script tests bash built-in RANDOM function
#by totaling dice rolls and checking the distribution.

num1=0
num2=0
num3=0
num4=0
num5=0
num6=0

i=0

while [ $i -lt 600001 ]
do
    i=$(($i + 1))
    ran=$(($RANDOM % 6 + 1))
    if [ $ran == 1 ]
    then
        num1=$(($num1 + 1))
    elif [ $ran == 2 ]
    then
        num2=$(($num2 + 1))
    elif [ $ran == 3 ]
    then
        num3=$(($num3 + 1))
    elif [ $ran == 4 ]
    then
        num4=$(($num4 + 1))
    elif [ $ran == 5 ]
    then
        num5=$(($num5 + 1))
    else
        num6=$(($num6 + 1))
    fi
done

echo "i's: $i"
echo "1's: $num1"
echo "2's: $num2"
echo "3's: $num3"
echo "4's: $num4"
echo "5's: $num5"
echo "6's: $num6"
