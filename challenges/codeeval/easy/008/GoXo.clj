(require '[clojure.string :as str])
   (with-open [rdr (clojure.java.io/reader (first *command-line-args*))]
   (doseq [line (remove empty? (line-seq rdr))]
        (def parts (str/split line #" "))
        (def res (clojure.string/join " " (into [] (reverse parts))))
        (println res)
    ))
