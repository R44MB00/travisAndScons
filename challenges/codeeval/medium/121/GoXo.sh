while read line || [[ -n "$line" ]]; do
	
	ENCRYPTED=('b' 'c' 'd' 'e' 'f' 'g' 'h' 'i' 'j' 'k' 
		'l' 'm' 'n' 'o' 'p' 'q' 'r' 's' 't' 'u' 'v' 'w' 'x' 'y' 'z' 'a' ' ');
	DECRYPTED=('h' 'e' 's' 'o' 'c' 'v' 'x' 'd' 'u' 'i' 
		'g' 'l' 'b' 'k' 'r' 'z' 't' 'n' 'w' 'j' 'p' 'f' 'm' 'a' 'q' 'y' ' ');

	len=${#line};
	
	for ((i=0; i<=len; i++))
	do
		CH=${line:$i:${i+1}};

		for k in "${!ENCRYPTED[@]}"; do
  			if [[ "${ENCRYPTED[$k]}" = "$CH" ]]; then

       			echo -n "${DECRYPTED[$k]}";
       		fi
		done
	done

	echo
 
done < 1