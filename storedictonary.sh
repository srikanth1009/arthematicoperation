#!/bin/bash -x
read a b c
echo "the three values are $a $b $c"
expr1=`expr $a + $b \* $c`
expr2=`expr $a \* $b + $c`
expr3=`expr $c + $a / $b`
expr4=`expr $a % $b + $c`
declare -A value
value[1]=$expr1
value[2]=$expr2
value[3]=$expr3
value[4]=$expr4
echo "stored values" ${value[@]}


