let x =Scanf.scanf "%d "(fun x ->  x);;
let rec hypo a b = hypot a b;;
Printf.printf "\n\n";;
for i=0 to x-1 do
  let (a,b,c) =Scanf.scanf "%d %d %d "(fun a b c ->  (a,b,c)) in
  let aa = float_of_int a in
  let bb = float_of_int b in
  let hy = hypo aa bb in
  if float_of_int c > hy then
    Printf.printf "O "
  else
    if float_of_int c < hy then
      Printf.printf "A "
    else
      Printf.printf "R "
done;;
Printf.printf "\n\n";;
