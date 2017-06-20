let () =
  Scanf.scanf "%d " (fun n ->
    for i = 0 to n-1 do
      let (a, b) =Scanf.scanf "%f %f " (fun a b -> (a,b)) in
        let res = a /. (b**2.00) in
        if res < 18.50 then
          Printf.printf "under "
        else
          if res<25.00 then
            Printf.printf "normal "
          else
            if res < 30.00 then
              Printf.printf "over "
            else
              Printf.printf "obese "
    done)
