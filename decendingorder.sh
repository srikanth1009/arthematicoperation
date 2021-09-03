#!/bin/bash -x
read a b c
echo "the three values are $a $b $c"
expr1=`expr $a + $b \* $c`
expr2=`expr $a \* $b + $c`
expr3=`expr $c + $a / $b`
expr4=`expr $a % $b + $c`
declare -a value
counter=0
value[1]=$expr1
value[2]=$expr2
value[3]=$expr3
value[4]=$expr4
result1=${value[@]}
result=(${value[1]} ${value[2]} ${value[3]} ${value[4]})

for (( i=0 ; i < ${#result[@]}; i++ )) 
do
    for (( j=0 ; j < ${#result[@]}; j++ )) 
    do
      if [[ ${result[$j]} -lt  ${result[$i]} ]]
      then
        tmp=${result[$i]}
        result[$i]=${result[$j]}
        result[$j]=${tmp}
      fi
    done
done

for n in "${result[@]}"
do
    echo "$n"
done
