#!/bin/bash -x
read a b c
echo "the three values is $a $b $c"
echo `expr $a + $b \* $c`
