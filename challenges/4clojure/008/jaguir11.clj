;; 4clojure 008 - Intro to sets
(= (set '(:a :b :c :d)) (set '(:a :a :b :c :c :c :c :d :d)))
(= (set '(:a :b :c :d)) (clojure.set/union #{:a :b :c} #{:b :c :d}))
