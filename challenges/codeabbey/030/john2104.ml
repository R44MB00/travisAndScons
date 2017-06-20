let word = read_line ();;
let reverse s =
  let len = String.length s - 1 in
  let s' = String.create (len + 1) in
  for i = 0 to len do
    s'.[i] <- s.[len - i]
  done;
  s';;

let result = reverse word;;
Printf.printf "\n\n%s\n\n" result;;
