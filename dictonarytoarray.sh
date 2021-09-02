#!/bin/bash -x
declare -A value
declare -a values
read a b c d
value[1]=$a
value[2]=$b
value[3]=$c
value[4]=$d
value[5]=$values
echo "stored values" ${value[@]}

