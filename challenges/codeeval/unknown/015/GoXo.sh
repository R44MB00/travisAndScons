check=$(echo -n I | od -to2 | awk '{ print substr($2,6,1); exit}');
if [[ $check == 1 ]]; then
    echo "LittleEndian";
else
    echo "BigEndian";
fi