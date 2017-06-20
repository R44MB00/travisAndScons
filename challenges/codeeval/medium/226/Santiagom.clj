(defn parse-int [s]
   (Integer. (re-find  #"\d+" s )))
   
(def alpha (hash-map :a "u", :b "v", :c "w", :d "x", :e "y", :f "z", :g "n", :h "o", :i "p", :j "q", :k "r", :l "s", :m "t", :n "g", :o "h", :p "i", :q "j", :r "k", :s "l", :t "m", :u "a", :v "b", :w "c", :x "d", :y "e", :z "f" ))

(with-open [rdr (clojure.java.io/reader (first *command-line-args*))]
  (doseq [line (remove empty? (line-seq rdr))]
     (def decoded [])
      (loop [y 0]
				(when (< y (count line))
				(def mapper (clojure.core/str (get line y)))
					(def reference (find-keyword mapper))
						(def decoded (conj decoded (get alpha (find-keyword reference))))
						(recur (+ y 1))))
						(println (clojure.core/str/join "" decoded))))
