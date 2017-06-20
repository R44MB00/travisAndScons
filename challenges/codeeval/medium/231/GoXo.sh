res=[]
len=0

function cocktail() {
  #forward
  for ((j=0; j<len-1; j++)); do
    a="${res[j]}"
    b="${res[j+1]}"

    if (( a > b )); then
      temp="$a"
      res[$((j))]="${res[j+1]}"
      res[$((j+1))]="$temp"
    fi
  done

  #backward
  for ((j=len-1; j>0; j--)); do
    a="${res[j-1]}"
    b="${res[j]}"

    if (( a > b )); then
      temp="$a"
      res[$((j-1))]="${res[j]}"
      res[$((j))]="$temp"
    fi

  done
}

while read line || [[ -n "$line" ]]; do

  IFS='|' read -r -a parts <<< "$line";
  it="$((parts[1]))"
  list="${parts[0]}"
  IFS=' ' read -r -a res <<< "$list";
  IFS=''
  len="${#res[@]}"

  for ((i=1; i<=it; i++)); do cocktail
  done
  echo "${res[@]}"

  res=[]
  len=0

done < "$1"
