#!/bin/bash

echo -en "travis_fold:start:analysis\r"

echo "### Analisis sintactico"

#if [ -z "${1+x}" ]; then
#  echo "Login no especificado."
#  echo "Uso: $0 login"
#  exit -1
#else
#  login="$1"
#fi

_style()
{
  local user="$1"
  local dir=build/people/"$user"

  local pyfiles=$(find challenges -iname "$user".py)
  if [ -n "$pyfiles" ]; then
    mkdir -p "$dir"
    echo -n " flake8"
    command -v flake8 >/dev/null && (flake8 $(echo "$pyfiles")) > "$dir"/flake8.log 2>&1
    echo -n " pylint"
    command -v pylint >/dev/null && (pylint $(echo "$pyfiles")) > "$dir"/pylint.log 2>&1
  fi

  local rbfiles=$(find challenges -iname "$user".rb)
  if [ -n "$rbfiles" ]; then
    mkdir -p "$dir"
    echo -n " ruby-lint"
    command -v ruby-lint >/dev/null && (ruby-lint $(echo "$rbfiles")) > "$dir"/ruby-lint.log 2>&1
  fi

  local cfiles=$(find challenges -iname "$user".c)
  if [ -n "$cfiles" ]; then
    mkdir -p "$dir"
    echo -n " splint"
    command -v splint >/dev/null && (splint $(echo "$cfiles")) > "$dir"/splint.log 2>&1
  fi

  local jsfiles=$(find challenges -iname "$user".js)
  if [ -n "$jsfiles" ]; then
    mkdir -p "$dir"
    echo -n " gjslint"
    command -v gjslint >/dev/null && (gjslint $(echo "$rbfiles")) > "$dir"/gjslint.log 2>&1
  fi

  local shfiles=$(find challenges -iname "$user".sh)
  if [ -n "$shfiles" ]; then
    mkdir -p "$dir"
    echo -n " shellcheck"
    command -v shellcheck >/dev/null && (shellcheck $(echo "$shfiles")) > "$dir"/shellcheck.log 2>&1
  fi
}

_langs()
{
  local user="$1"
  LANGS=$(find . -iname "$user".* -exec basename {} \; | sort | uniq | cut -d. -f2)
  echo $LANGS
}

USERS=$(find challenges -type f | grep -i -v "LINK\|DATA\|OTHERS\|LANG\|SPEC" | rev | cut -d"/" -f1 | rev | cut -d"." -f1 | sort | uniq)

echo -e "> Usuarios:" $USERS "\n"

for u in $USERS; do
  echo -n "--> Lenguajes de "$u": "
  _langs "$u"

  echo -n "    Analizando con:"
  _style "$u"
  echo ""
done

echo -e "\nTamaño en KB de los logs de errores de cada persona"
du -s build/people/* | sort -n

echo -en "travis_fold:end:analysis\r"
