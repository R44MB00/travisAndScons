while read line || [[ -n "$line" ]]; do

  IFS=' ' read -r -a parts <<< "$line";
  IFS=''
  LEN="${#parts[@]}"
  N=$(echo "sqrt($LEN)" | bc)
  ini=$((LEN - N))
  ans=""
  cnt=0

  while true; do

    ans="$ans${parts[ini]} "

    if (( ini < N )); then

      cnt=$((cnt + 1))
      ini=$((LEN - N + cnt))
      ans="$ans${parts[ini]} "

      if ((ini >= LEN)); then
        break
      fi
    fi
    ini=$((ini - N))
  done
  echo "$ans"
done < "$1"
