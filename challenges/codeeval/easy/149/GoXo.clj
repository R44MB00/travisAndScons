(require '[clojure.string :as str])
 (with-open [rdr (clojure.java.io/reader (first *command-line-args*))]
 (doseq [line (remove empty? (line-seq rdr))]
    (def parts (str/split line #" "))
    (def n (count parts))
    (def res "2r")
    (loop [i 0]
      (if (< i n)
        (do
          (def idxLen (count (get parts i)))
          (def numLen (count (get parts (+ i 1))))
          (if (= idxLen 2)
            (def temp (apply str (repeat numLen "1")))
            (def temp (apply str (repeat numLen "0")))
          )
          (def res (str res temp))
          (recur (inc (+ i 1))))
      ))
    (println (read-string res))
    ))
