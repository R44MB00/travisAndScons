#!/bin/bash

if [ -z "${1+x}" ]; then
  echo "Login no especificado."
  echo "Uso: $0 login"
  exit -1
else
  login="$1"
fi

_challenges()
{
  local file="$1"
  local ext="$2"
  find challenges -iname "$file""$ext" | wc -l
}

_articles()
{

  local dir=articles/"$1"
  if [ -d "$dir" ]; then
    find "$dir" | wc -l
  else
    echo 0
  fi
}

INVAL=$(find challenges/brainquest -iname "$login*" | wc -l)

echo "$login ha enviado"
echo "$(_articles "$login") articulos"
TOTAL=$(_challenges "$login" "*")
echo "$TOTAL retos totales"
echo "$INVAL retos invalidos (adivinanzas o matematicos)"
echo "$((TOTAL - INVAL)) retos validos"
echo "- $(_challenges "$login" ".fix") retos con problemas"
echo "- $(_challenges "$login" ".asc") esta(n) en palabras"
echo "- $(_challenges "$login" ".feature") esta(n) en Gherkin"
echo "- $(_challenges "$login" ".py") esta(n) en Python"
echo "- $(_challenges "$login" ".ml") esta(n) en OCaml"
echo "- $(_challenges "$login" ".java") esta(n) en Java"
echo "- $(_challenges "$login" ".lua") esta(n) en Lua"
echo "- $(_challenges "$login" ".rs") esta(n) en Rust"
echo "- $(_challenges "$login" ".cs") esta(n) en C#"
echo "- $(_challenges "$login" ".cpp") esta(n) en C++"
echo "- $(_challenges "$login" ".c") esta(n) en C"
echo "- $(_challenges "$login" ".d") esta(n) en D"
echo "- $(_challenges "$login" ".clj") esta(n) en Clojure"
echo "- $(_challenges "$login" ".hs") esta(n) en Haskell"
echo "- $(_challenges "$login" ".sh") esta(n) en Shell"
echo "- $(_challenges "$login" ".js") esta(n) en JavaScript"
echo "- $(_challenges "$login" ".rb") esta(n) en Ruby"
echo "- $(_challenges "$login" ".pl") esta(n) en Perl"
