#!/bin/bash

trap '' 2

pushd . > /dev/null

CHALL="$1"
cd "$CHALL"

MIN=${2:-6}
INDEX=$(for i in $(seq $MIN 9); do echo -n \\.$i\\\|;done; echo -n 1\\.0)

OTHERS=$(cat OTHERS.txt)

ID=0
for other in $OTHERS; do
  ID=$((ID + 1))
  wget -T 4 -q $other -O $ID.other
done

FILES=$(ls | grep -v '.txt')
OWN=$(echo "$FILES" | grep -v '.other' | sort)
MATRIX=$(simhash -f 256 -s 4 -m $FILES)
HEADER=$(echo "$MATRIX" | head -1)
HIGH=$(echo "$MATRIX" | grep $INDEX | grep -v '.other')

if [ -n "$HIGH" ]; then
   echo "--> Reto: $CHALL, Otros: $ID, Propios:" $OWN
   echo "$HEADER"
   echo "$HIGH"
fi

rm *.other

popd > /dev/null

trap 2
