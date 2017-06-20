countLine=0;
while read line || [[ -n "$line" ]]; do

  countLine=$((countLine+1));

  strindex() {
    x="${1%%$2*}"
    [[ "$x" = "$2" ]] && echo -1 || echo ${#x}
  }

  DIC1=' !'\"'#$%&'\''()*+,-./0123456789:<=>?@';
  DIC2='ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz';
  DIC="$DIC1""$DIC2";
  IFS=';' read -r -a parts <<< "$line";
  key=${parts[0]};
  message=${parts[1]};
  lenM=${#message};
  lenK=${#key};
  ct=0;
  IFS='';
  res="";

  for ((i=0; i<lenM; i++))
    do

      if [[ "$ct" = "$lenK" ]]; then
          ct=0;
      fi

      ch="${message:$i:1}";
      idx="$(strindex "$DIC" "$ch")";

      if [[ "$ch" = '*' ]]; then
          idx=10;
      fi

      if [[ "$ch" = '?' ]]; then
          idx=30;
      fi

      idK="${key:$ct:1}";
      idx2="$((idx - idK))";
      res=$res"${DIC:$idx2:1}";
      ct=$((ct+1));
    done

    echo "$res";

done < "$1"
