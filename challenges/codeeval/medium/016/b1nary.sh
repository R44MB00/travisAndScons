while read line || [[ -n "$line" ]]; do
    binary=$(echo "obase=2;$line" | bc)
    echo $binary | tr -cd '1' | wc -c
done < $1
