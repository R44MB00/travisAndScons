;; 4clojure 021 - Nth element
;; answer (fn nth-seq[seqs n] (first (drop n seqs)))
(= ((fn nth-seq[seqs n] (first (drop n seqs))) '(4 5 6 7) 2) 6)
(= ((fn nth-seq[seqs n] (first (drop n seqs))) [:a :b :c] 0) :a)
(= ((fn nth-seq[seqs n] (first (drop n seqs))) [1 2 3 4] 1) 2)
(= ((fn nth-seq[seqs n] (first (drop n seqs))) '([1 2] [3 4] [5 6]) 2) [5 6])
