#!/bin/bash

trap '' 2

pushd . > /dev/null

CHALL="$1"
cd "$CHALL"

MIN=${2:-70}

OTHERS=$(cat OTHERS.txt)

ID=0
for other in $OTHERS; do
  ID=$((ID + 1))
  wget -T 4 -q $other -O $ID.other
done

FILES=$(ls | grep -v '.txt')
OWN=$(echo "$FILES" | grep -v '.other' | sort)
OUTPUT=$(sim_text -T -n -p -s -t $MIN $FILES | grep -v 'other consists.*other material')

if [ -n "$OUTPUT" ]; then
   echo "--> Reto: $CHALL, Otros: $ID, Propios:" $OWN
   echo "$OUTPUT"
fi

rm *.other

popd > /dev/null

trap 2
