function check() {
  word=$1
  comp=""

  for ((j=0; j<4 ; j++)); do
    ch="${word:j:1}"

   if [ "$ch" = 'c' ]||[ "$ch" = 'o' ]||[ "$ch" = 'd' ]||[ "$ch" = 'e' ]; then

       if [[ "$ch" != *["$comp"]* ]]; then
         comp="$comp$ch"
       else
        break
     fi
   fi
  done

  if [[ "${#comp}" = 4 ]]; then
    count=$((count + 1))
  fi
}

while read line || [[ -n "$line" ]]; do

  count=0
  IFS=' | ' read -r -a parts <<< "$line";
  IFS=''

  col="${#parts[0]}"
  row="${#parts[@]}"

  # Check squares
    for ((r=0; r<row-1; r++)); do
      sub=""
      for ((c=0; c<=col-1; c++)); do
        sub="${parts[r]:c:2}"
        sub="$sub${parts[r+1]:c:2}"
        check "$sub"

      done
    done
  echo $count
done < "$1"