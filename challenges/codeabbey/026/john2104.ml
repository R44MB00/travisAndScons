let x =Scanf.scanf "%d "(fun x ->  x);;
let rec gcd a b =
        if b = 0 then a else gcd b (a mod b);;
let rec lcm a b gd = (a*b)/gd;;
Printf.printf "\n\n";;
for i=0 to x-1 do
  let (a,b) =Scanf.scanf "%d %d "(fun a b ->  (a,b)) in
  let gd = gcd a b in
  Printf.printf "(%d %d) " gd (lcm a b gd)
done;;
Printf.printf "\n\n";;
