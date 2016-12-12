(defn fib-pair [[a b]] [b (+ a b)])

(defn fibon 
  [n]
  (nth (map first (iterate fib-pair [1 1])) n))
