(require '[clojure.string :as str])
(defn abs [n] (max n (- n)))
   (with-open [rdr (clojure.java.io/reader (first *command-line-args*))]
   (doseq [line (remove empty? (line-seq rdr))]
        (def parts (str/split line #" "))
        (def n (read-string (parts 0)))
        (def dif1 999999)
        (def dif2 0)
        (loop [i 1]
          (if (<= i n)
            (do
            (def h (read-string (get parts i)))
            (loop [j 1]
              (if (<= j n)
                (do
                (def hc (read-string (get parts j)))
                (def dif (abs (- h hc)))
                (def dif2 (+ dif dif2))
                (recur (inc j)))
                ))
            (def dif1 (min dif1 dif2))
            (def dif2 0)
            (recur (inc i)))
            ))
        (println dif1)
        ))
