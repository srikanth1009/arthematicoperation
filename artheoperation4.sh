#!/bin/bash -x
read a b c
echo "the three values are $a $b $c"
#echo `expr $a + $b \* $c`
#echo `expr $a \* $b + $c`
#echo `expr $c + $a / $b`
echo `expr $a % $b + $c`
