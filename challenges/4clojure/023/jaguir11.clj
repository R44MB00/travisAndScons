;; 4clojure 023 - Reverse a sequence
;; answer #(reduce conj () %)
(= (#(reduce conj () %) [1 2 3 4 5]) [5 4 3 2 1])
(= (#(reduce conj () %) (sorted-set 5 7 2 7)) '(7 5 2))
(= (#(reduce conj () %) [[1 2][3 4][5 6]]) [[5 6][3 4][1 2]])
