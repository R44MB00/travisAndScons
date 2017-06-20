while read line || [[ -n "$line" ]]; do

  function check() {
    arg1=$1
    IFS=' ' read -r -a array <<< "$arg1";
    IFS=''
    suma=0;

    for ((j=0; j<n; j++)); do
      suma=$((suma + array[j]))
    done

    if [[ $((suma)) != $ref ]]; then
      echo "False"
    else
      echo "True"
    fi
  }

  IFS=';' read -r -a parts <<< "$line";
  n=${parts[0]};
  ref=0;
  if [[ $n = 4 ]]; then
    ref=10;

  fi
  if [[ $n = 9 ]]; then
    ref=45;

  fi
  grid=${parts[1]};
  IFS=',' read -r -a grid <<< "$grid";
  IFS=''
  len=$((n*n))
  temp=""
  res="True"
  counter=$((len-n))

  #check rows
  for ((i=0; i<=counter; i+=n)); do
    for ((k=0; k<n; k+=1)); do
      temp=$temp${grid[k+i]}$' '
    done

    res="$(check "$temp")"
    temp=""

    if [[ $res = "False" ]]; then
      break
    fi
  done

  if [[ $res = "False" ]]; then
    echo "$res"
    continue
  fi

  #check cols
  for ((i=0; i<n; i++)); do
    for ((k=0; k<=counter; k+=n)); do
        temp=$temp${grid[k+i]}$' '
      done
    res="$(check "$temp")"

    if [[ $res = "False" ]]; then
        break
    fi
    temp=""
  done

  if [[ $res = "False" ]]; then
    echo "$res"
    continue
  fi

  #check symetric matrix (constrainte)
  sym=0
  for ((i=n-1; i<len-1; i+=n-1)); do

    if [[ ${grid[i]} = "$n" ]]; then
      sym=$((sym+1))
    fi
  done

  if [[ $sym = "$n" ]]; then
      res="False"
  fi

  echo "$res"
done < "$1"
