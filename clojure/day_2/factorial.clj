(defn factorial
  [n]
  (apply * (take n (iterate inc 1))))
