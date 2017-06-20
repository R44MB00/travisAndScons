(require '[clojure.string :as s])
(defn parse-number
  [s]
  (if (re-find #"^-?\d+\.?\d*$" s)
    (read-string s)))
(defn getMod 
  [a]
    (mod (parse-number (first a)) (parse-number (second a))))
(defn trim_s
  [text]
    (s/split text #","))
(with-open [rdr (clojure.java.io/reader (first *command-line-args*))]
  (doseq [line (remove empty? (line-seq rdr))]
    (println(getMod(trim_s line)))))
