;; 4clojure 046 - Flipping out
;; answer #(fn [x y & args] (apply % y x args))
(= 3 ((#(fn [x y & args] (apply % y x args)) nth) 2 [1 2 3 4 5]))
(= true ((#(fn [x y & args] (apply % y x args)) >) 7 8))
(= 4 ((#(fn [x y & args] (apply % y x args)) quot) 2 8))
(= [1 2 3] ((#(fn [x y & args] (apply % y x args)) take) [1 2 3 4 5] 3))
