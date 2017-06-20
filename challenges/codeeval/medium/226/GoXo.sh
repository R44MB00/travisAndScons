while read line || [[ -n "$line" ]]; do
	
	DECRYPTED=('a' 'b' 'c' 'd' 'e' 'f' 'g' 'h' 'i' 'j' 'k' 
		'l' 'm' 'n' 'o' 'p' 'q' 'r' 's' 't' 'u' 'v' 'w' 'x' 'y' 'z' ' ');
	ENCRYPTED=('u' 'v' 'w' 'x' 'y' 'z' 'n' 'o' 'p' 'q' 'r' 
		's' 't' 'g' 'h' 'i' 'j' 'k' 'l' 'm' 'a' 'b' 'c' 'd' 'e' 'f' ' ');

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
 
done < "$1"