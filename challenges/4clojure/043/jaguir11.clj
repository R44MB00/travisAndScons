;; 4clojure 043 - Reverse Interleave
(fn rev-interleave [seqs n] (for [i (range n)] (take-nth n (drop i seqs))))
(= (rev-interleave [1 2 3 4 5 6] 2) '((1 3 5) (2 4 6)))
(= (rev-interleave (range 9) 3) '((0 3 6) (1 4 7) (2 5 8)))
(= (rev-interleave (range 10) 5) '((0 5) (1 6) (2 7) (3 8) (4 9)))
