;; 4clojure 016 - Hello World
(= ((fn greet [uname] (str "Hello, " uname "!")) "Dave") "Hello, Dave!")
(= ((fn greet [uname] (str "Hello, " uname "!")) "Jenn") "Hello, Jenn!")
(= ((fn greet [uname] (str "Hello, " uname "!")) "Rhea") "Hello, Rhea!")
