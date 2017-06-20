open Num
let x =Scanf.scanf "%d "(fun x ->  x);;
let y = num_of_int x;;
let total = ref y in
let endloop = ref false in
while not !endloop do

  let (a,b) = Scanf.scanf "%s %d "(fun a b -> (a,b)) in
  let nume = num_of_int b in
  if a="%" then
    begin
    endloop := true;
    total := mod_num !total nume;
    end
  else
    if a="*" then
      total := !total */ num_of_int b
    else
      total := !total +/ num_of_int b
done;
let meh = string_of_num !total in
Printf.printf "%s" meh
;;
