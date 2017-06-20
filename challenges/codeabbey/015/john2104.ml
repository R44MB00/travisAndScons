let values = read_line ();;
let intlist = List.map int_of_string(Str.split (Str.regexp " ") values);;
let mini lst =
	   List.fold_left
	     (fun a b ->
	        if a < b then
	           a
	        else
	           b)
	     (List.hd lst)
	     lst
	;;
let maxi lst =
	   List.fold_left
	     (fun a b ->
	        if a > b then
	           a
	        else
	           b)
	     (List.hd lst)
	     lst
	;;
Printf.printf "%d " (maxi intlist);
Printf.printf "%d\n\n" (mini intlist);
