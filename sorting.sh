#!/bin/bash -x

read -p "Enter your first number: " a
read -p "Enter your second number: " b
read -p "Enter your third number: " c

var=$(( $a+$b*$c ))
var2=$(( $a*$b+$c ))
var3=$(( $c+$a/$b ))
var4=$(( $a%$b+$c ))

sorting=([0]=$var [1]=$var2 [2]=$var3 [3]=$var4)
echo ${sorting[@]}

for key in ${!sorting[@]}
do
   array+=(${sorting[$key]})
done
echo ${array[@]}

len=${#array[@]}
echo "length of an array is" $len

#sorting array in descending order

for ((i=0; i<$len; i++ ))
do
   for ((j=$(( $i+1 )); j<$len; j++ ))
   do
      if [ ${array[i]} -lt ${array[j]} ]
      then
         temp=${array[i]}
         array[$i]=${array[j]}
         array[$j]=$temp
      fi
   done
done
echo "array in descending order" ${array[@]}
