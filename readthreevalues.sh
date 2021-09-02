#!/bin/bash -x
read a b c
if [ $a -eq $b -a $a -eq $c ]; then
    echo "All the three numbers are equal"
elif [[ $a -eq $b || $b -eq $c || $c -eq $a ]]; then
    echo "I cannot figure out which number is largest"
else
echo `expr $a + $b \* $c`
echo `expr $a % $b + $c`
echo `expr $c + $a / $b`
echo `expr $a \* $b + $c`
    if [ $a -gt $b -a $a -gt $c ]; then
        echo "$a is biggest number"
    elif [ $b -gt $a -a $b -gt $c ]; then
        echo "$b is biggest number"
    elif [ $c -gt $a -a $c -gt $b ]; then
        echo "$c is biggest number"
  elif [ $a -lt $b -a $a -lt $c ]; then
        echo "$a is smallest number"
    elif [ $b -lt $a -a $b -lt $c ]; then
        echo "$b is smallest number"
    elif [ $c -lt $a -a $c -lt $b ]; then
        echo "$c is smallest number"

    fi
fi

