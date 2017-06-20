#!/bin/bash

if [ $# -lt 1 ]; then
  echo "Uso: $0 archivo|directorio"
  exit 1
fi

function words_oor()
{
  WORDS=$(wc -w $1 | cut -d" " -f1)
  if [ $WORDS -lt 1000 -o $WORDS -gt 1500 ]; then
    echo $WORDS $1
  fi
}

echo "### Archivos con numero de palabras fuera de rango (<1000 o >1500)"

if [ -f $1 ]; then
  words_oor $1
fi

if [ -d $1 ]; then
  FILES=$(find $1 -iname "*.asc" | sort)
  for f in $FILES; do
    words_oor $f
  done
fi
