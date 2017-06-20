let frnd f = floor (f +. 0.5)
let fartocels f = int_of_float(  frnd( float_of_int(f - 32)  *. 0.555555556 )  )
let values = read_line ();;
let intlist = List.map int_of_string(Str.split (Str.regexp " ") values);;
let res = List.map fartocels intlist;;
Printf.printf "\n\n";;
let f elem =
    Printf.printf "%d " elem in
    List.iter f res;;
Printf.printf "\n\n";;
