;; 4clojure 042 - Factorial fun
;; answer #(reduce * (range 1 (inc %)))
(= (#(reduce * (range 1 (inc %))) 1) 1)
(= (#(reduce * (range 1 (inc %))) 3) 6)
(= (#(reduce * (range 1 (inc %))) 5) 120)
(= (#(reduce * (range 1 (inc %))) 8) 40320)
