;; 4clojure 102 - Camel case
;; Test cases
(fn to-camel-case [ustr]
    (clojure.string/replace ustr #"-(\w)"
                            #(clojure.string/upper-case (second %1))))
(= (to-camel-case "multi-word-key") "multiWordKey")
(= (to-camel-case "something") "something")
(= (to-camel-case "leaveMeAlone") "leaveMeAlone")