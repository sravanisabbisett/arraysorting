#!/bin/bash -x

read -p "Enter your first number: " a
read -p "Enter your second number: " b
read -p "Enter your third number: " c

var=$(( $a+$b*$c ))
var2=$(( $a*$b+$c ))
var3=$(( $c+$a/$b ))
var4=$(( $a%$b+$c ))
