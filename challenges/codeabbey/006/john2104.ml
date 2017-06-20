let frnd f = floor (f +. 0.5)
let () =
  Scanf.scanf "%d " (fun n ->
                      for i = 0 to n-1 do
                        Scanf.scanf "%d %d " (fun a b -> ( int_of_float(frnd ((float_of_int a) /. (float_of_int b))) )  )
                        |> Printf.printf "%d "
                      done)
