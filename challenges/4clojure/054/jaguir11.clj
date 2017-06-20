;; 4clojure 054 - Partition a sequence
;; (= (__ 3 (range 9)) '((0 1 2) (3 4 5) (6 7 8)))
;; (= (__ 2 (range 8)) '((0 1) (2 3) (4 5) (6 7)))
;; (= (__ 3 (range 8)) '((0 1 2) (3 4 5)))
(fn part-seq [n seqs]
    (when (and (seq seqs) (>= (count seqs) n))
        (cons (take n seqs) (part-seq n (drop n seqs)))))
