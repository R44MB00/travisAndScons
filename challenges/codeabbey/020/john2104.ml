let nlines =int_of_string(read_line ());;
Printf.printf "\n\n";;
let vowelcount s =
  let sum = ref 0 in
  String.iter (fun x ->
    if x= 'a' || x = 'e' || x = 'i'|| x = 'o'|| x = 'u'|| x = 'y' then
     sum := !sum +1 ) s;
  !sum;;

for i=0 to nlines-1 do
  let s = read_line () in
  let solution =  vowelcount s in
  Printf.printf "%d " solution
done;;
Printf.printf "\n\n";;
