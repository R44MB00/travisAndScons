;; 4clojure 055 - Count Occurrences
;; (= (__ [1 1 2 3 2 1 1]) {1 4, 2 2, 3 1})
;; (= (__ [:b :a :b :a :b]) {:a 2, :b 3})
;; (= ( '([1 2] [1 3] [1 3])) {[1 2] 1, [1 3] 2})
#(apply merge-with + (for [x %] {x 1}))
