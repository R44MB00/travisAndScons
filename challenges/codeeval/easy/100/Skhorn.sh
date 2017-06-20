#!/bin/bash

while read line || [[ -n "$line" ]]; do
    #echo $line
    mod=$((line%2))
    if [ "$mod" -eq "1" ]
    then
        echo "0"
    else
        echo "1"
    fi

    #ARRAY=$(echo $line | grep -o .)
    #echo "${ARRAY[@]}"
    #arrLen=${#ARRAY[@]}
    #echo $arrLen

done < $1
