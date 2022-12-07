#!/bin/sh

# Simple calculator for linux terminal

echo "Enter first number:"
read x
echo "Enter second number"
read y
echo "Enter action symbol"
read action

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