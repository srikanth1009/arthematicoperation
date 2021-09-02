#!/bin/bash -x
read a b c
echo "three values are $a $b $c"
#echo `expr $a + $b \* $c`
echo `expr $a \* $b + $c`
