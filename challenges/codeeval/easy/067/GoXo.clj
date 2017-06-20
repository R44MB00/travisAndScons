(require '[clojure.string :as str])
   (with-open [rdr (clojure.java.io/reader (first *command-line-args*))]
   (doseq [line (remove empty? (line-seq rdr))]
     (println (read-string (str "16r" line)))
   ))
