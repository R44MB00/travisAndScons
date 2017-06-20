#!/bin/bash

if [ $# -lt 1 ]; then
  echo "Uso: $0 archivo|directorio"
  exit 1
fi

function ari_gt_40()
{
  LINES=$(style -r 40 $1 |  grep $1 | cut -d" " -f1)
  for l in $LINES; do echo $l ; done
}

echo "### Lineas con frases con indice problematico de legibilidad ARI >= 40"

if [ -f $1 ]; then
  ari_gt_40 $1
fi

if [ -d $1 ]; then
  FILES=$(find $1 -iname "*.asc" | sort)
  for f in $FILES; do
    ari_gt_40 $f
  done
fi
