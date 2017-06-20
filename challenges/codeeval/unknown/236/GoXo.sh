while read line || [[ -n "$line" ]]; do

    IFS=' | ' read -r -a parts <<< "$line";
    RES_ARRAY=();
    for element in "${parts[@]}"; do

        res=${element:0:1};
        len=${#element};

        for ((i=1; i<len; i++)); do

            last="$(echo "$res" | tail -c 2)";
            bit=${element:$i:${i+1}};

            if [[ "$bit" = 1 ]]; then

                if [[ "$last" = 0 ]]; then
                   res=$res$'1';
                else
                   res=$res$'0';
                fi
            else
                res=$res$last;
            fi

        done

    RES_ARRAY+=("$((2#$res))");

    done

separator=" | ";
answer="$( printf "${separator}%s" "${RES_ARRAY[@]}" )";
answer="${answer:${#separator}}";
echo "${answer}";

done < "$1"
