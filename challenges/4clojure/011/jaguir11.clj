;; 4clojure 011 - Maps conj
(= {:a 1, :b 2, :c 3} (conj {:a 1} {:b 2} [:c 3]))
