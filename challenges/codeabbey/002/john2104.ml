let nlines = read_line ();;
let values = read_line ();;
let intlist = List.map int_of_string(Str.split (Str.regexp " ") values);;
let sum = List.fold_left ( + ) 0;;
let result = sum intlist;;
Printf.printf "%d\n" result;;
