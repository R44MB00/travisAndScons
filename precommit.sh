#!/bin/bash

echo -en "travis_fold:start:precommit\r"

RETURN=0
CHANGED=$(git diff --name-only HEAD $(git merge-base HEAD master))

echo "### Archivos modificados en este cambio"
if [ -n "$CHANGED" ]; then
  echo "$CHANGED"
  pre-commit run --files $CHANGED
  RETURN=$?
else
  echo "(Ninguno)"
  echo "Omitiendo ejecución de precommit."
fi

echo -en "travis_fold:end:precommit\r"

exit $RETURN
