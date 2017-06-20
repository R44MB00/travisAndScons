let () =
  Scanf.scanf "%d " (fun n ->
                      for i = 0 to n-1 do
                        Scanf.scanf "%d %d " (fun a b -> a + b)
                        |> Printf.printf "%d "
                      done)
