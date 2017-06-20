;; 4clojure 019 - Last element
;; answer #(nth % (dec(count %)))
(= (#(nth % (dec(count %))) [1 2 3 4 5]) 5)
(= (#(nth % (dec(count %))) '(5 4 3)) 3)
(= (#(nth % (dec(count %))) ["b" "c" "d"]) "d")
