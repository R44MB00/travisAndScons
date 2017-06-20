(require '[clojure.string :as str])

(defn bin2dec
	"Binario a Decimal"
	[bin]
		(Integer/parseInt bin 2))

(defn hex2dec
	"Hex a Decimal"
	[hex]
		(Integer/parseInt hex 16))

(defn -main
	""
	[]
(with-open [rdr (clojure.java.io/reader	"C:\\Users\\smunoz\\Desktop\\sample.txt")]
;(with-open [rdr (clojure.java.io/reader (first *command-line-args*))]
	(doseq [line (line-seq rdr)]
	 	(if (= true (or (if (= (reduce + (map #(hex2dec %) (str/split (get (str/split line #"\|") 0) #" "))) 
	 		(reduce + (map #(bin2dec %) (rest (str/split (get (str/split line #"\|") 1) #" "))))) true false ) 
	 			(if (< (reduce + (map #(hex2dec %) (str/split (get (str/split line #"\|") 0) #" "))) (reduce + (map #(bin2dec %) (rest (str/split (get (str/split line #"\|") 1) #" "))))) true false))) (println "True") (println "False")))))
