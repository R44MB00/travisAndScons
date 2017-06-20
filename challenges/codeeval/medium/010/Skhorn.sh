#!/bin/bash

while read line || [[ -n "$line" ]]; do

    arr=($line)
    last_item=$((${#arr[@]}-1))
    
   	index=${arr[last_item]}
   	
   	unset arr[last_item]
   	
   	if (($index <= ${#arr[@]}))
   	then 
   		echo ${arr[$((${#arr[@]}-$index))]}	
    fi
done < $1