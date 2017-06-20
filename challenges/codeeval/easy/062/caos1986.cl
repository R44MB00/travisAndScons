(defn strToInt [x] (Integer/parseInt (apply str (filter #(Character/isDigit %) x))))
(defn modulo [x y] (- x (* (quot x y) y)))
(with-open [rdr (clojure.java.io/reader (last *command-line-args*))]
  (doseq [line (remove empty? (line-seq rdr))]
    (prn (modulo (strToInt (first (.split line ","))) (strToInt (last (.split line ",")))))
))
