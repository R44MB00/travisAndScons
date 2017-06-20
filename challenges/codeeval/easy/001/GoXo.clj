(require '[clojure.string :as str])
(use '[clojure.string :only (join split)])

   (with-open [rdr (clojure.java.io/reader (first *command-line-args*))]
   (doseq [line (remove empty? (line-seq rdr))]

        (def parts (str/split line #" "))
    	(def f (read-string (parts 0)))
    	(def b (read-string (parts 1)))
    	(def n (read-string (parts 2)))
    	(def answer[])
    	(loop [i 1]
			(if (<= i n)
				(do
					(def answer (concat answer
					(cond
						(and (= (rem i f)0) (= (rem i b) 0)) ["FB"]
						(= (rem i f) 0) ["F"] 
						(= (rem i b) 0) ["B"] 
						:else [i])))
					
					(recur (inc i)))
				(println (join " " answer))
				))
    	))     