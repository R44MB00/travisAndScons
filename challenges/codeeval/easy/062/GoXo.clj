(require '[clojure.string :as str])
(use '[clojure.string :only (join split)])
   (with-open [rdr (clojure.java.io/reader (first *command-line-args*))]
   (doseq [line (remove empty? (line-seq rdr))]
        (def parts (str/split line #","))
    	(def n (read-string (parts 0)))
    	(def m (read-string (parts 1)))
    	(println (- n (* m (quot n m))))
    	))