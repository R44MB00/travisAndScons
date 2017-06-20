let () =
  Scanf.scanf "%d " (fun n ->
                      for i = 0 to n-1 do
                        let (a, b, c) =Scanf.scanf "%d %d %d " (fun a b c -> (a,b,c)) in
			if a>b then
			begin (* if 1*)
			if b>c then
			begin
			Printf.printf "%d " c
			end
			else
			begin
			Printf.printf "%d " b
			end
			end
			 else
			begin
			if a>c then
			begin
			Printf.printf "%d " c
			end
			else
			begin
			Printf.printf "%d " a
			end
			end

                      done)
