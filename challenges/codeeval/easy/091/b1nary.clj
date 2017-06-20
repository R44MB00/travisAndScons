(require '[clojure.string :as s])
(defn parse-number
  [s]
  (if (re-find #"^-?\d+\.?\d*$" s)
    (read-string s)))
(defn cmp [a b]
        (compare (parse-number a) (parse-number b)))
(defn trim_s
  [text]
    (s/split text #" "))
(with-open [rdr (clojure.java.io/reader (first *command-line-args*))]
  (doseq [line (remove empty? (line-seq rdr))]
    (println(clojure.string/join " " (sort cmp (trim_s line))))))
