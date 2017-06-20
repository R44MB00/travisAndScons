;; 4clojure 020 - Penultimate element
;; answer #(nth % (dec(dec(count %))))
(= (#(nth % (dec(dec(count %)))) (list 1 2 3 4 5)) 4)
(= (#(nth % (dec(dec(count %)))) ["a" "b" "c"]) "b")
(= (#(nth % (dec(dec(count %)))) [[1 2] [3 4]]) [1 2])
