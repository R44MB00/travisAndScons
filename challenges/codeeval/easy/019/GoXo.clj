(require '[clojure.string :as str])
   (with-open [rdr (clojure.java.io/reader (first *command-line-args*))]
   (doseq [line (remove empty? (line-seq rdr))]
      (def parts (str/split line #","))
      (def nume (read-string (parts 0)))
      (def nume (Integer/toBinaryString nume))
      (def pos1 (read-string (parts 1)))
      (def pos2 (read-string (parts 2)))
      (def len (count nume))
      (if (= (.charAt nume (- len pos1))(.charAt nume (- len pos2)))
        (println "true")
        (println "false")
      )
    ))
