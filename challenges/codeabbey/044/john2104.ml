let x =Scanf.scanf "%d "(fun x ->  x);;
let rec dicenum a b = (((a)mod 6)+1)+(((b)mod 6)+1);;
Printf.printf "\n\n";;
for i=0 to x-1 do
  let (a,b) =Scanf.scanf "%d %d "(fun a b ->  (a,b)) in
  Printf.printf "%d " (dicenum a b)
done;;
Printf.printf "\n\n";;
