let () =
  Scanf.scanf "%d " (fun n ->
                      for i = 0 to n-1 do
                        let (a, b) =Scanf.scanf "%d %d " (fun a b -> (a,b)) in
			if a<b then Printf.printf "%d "	a else Printf.printf "%d " b

                      done)
