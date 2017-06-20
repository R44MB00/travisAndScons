let nlines =int_of_string(read_line ());;
Printf.printf "\n\n";;
let calculatewsd s =
  let sum = ref 1 in
  let wsd = ref 0 in 
  String.iter (fun x ->
     wsd := !wsd + ((int_of_char (x)-48) * !sum);
     sum := !sum +1 ) s;
  !wsd;;
let values = read_line ();;
let intlist = Str.split (Str.regexp " ") values;;
List.iter (fun s ->
    let solution = calculatewsd s in
    Printf.printf "%d " solution;
) intlist;;
Printf.printf "\n\n";;
