;; 4clojure 022 - Count a Sequence
;; answer sol a = (fn num-elem [seqs] (reduce + (map (constantly 1) seqs)))
;; with sol a the function exceeds 80 chars per line
;; Lets remove the fn definition -> #(reduce + (map (constantly 1) %))
(= (#(reduce + (map (constantly 1) %)) '(1 2 3 3 1)) 5)
(= (#(reduce + (map (constantly 1) %)) "Hello World") 11)
(= (#(reduce + (map (constantly 1) %)) [[1 2] [3 4] [5 6]]) 3)
(= (#(reduce + (map (constantly 1) %)) '(13)) 1)
(= (#(reduce + (map (constantly 1) %)) '(:a :b :c)) 3)
