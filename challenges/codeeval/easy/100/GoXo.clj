(with-open [rdr (clojure.java.io/reader (first *command-line-args*))]
(doseq [line (remove empty? (line-seq rdr))]
    (def n (read-string line))
    (println (mod (+ n 1) 2))
    ))