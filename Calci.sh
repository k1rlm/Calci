#!/bin/sh

# Simple calculator for linux terminal

read -p "Enter first number: " x
read -p "Enter second number: " y
read -p "Enter action symbol: " action

case $action in
"+") echo "$x + $y = " $(expr $y + $x);;
"-") echo "$x - $y = "  $(expr $x - $y);;
"/") if [ $y -eq 0 ]; then
       echo "You can't divide by zero";
     else
       echo "$x / $y =" $(expr  $x / $y);
     fi;;
"*") echo "$x * $y = "$(expr  $x \* $y);;
esac
