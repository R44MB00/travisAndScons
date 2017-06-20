let () =
  Scanf.scanf "%d " (fun n ->
    for i = 0 to n-1 do
      let (a, b, c) =Scanf.scanf "%d %d %d " (fun a b c -> (a,b,c)) in
        if (a>b && a<c) || (a<b && a>c) then
          Printf.printf "%d " a
        else
          if (b>a && b<c) ||  (b<a && b>c) then
            Printf.printf "%d " b
          else
            Printf.printf "%d " c
    done)
