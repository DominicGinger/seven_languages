(def accounts (ref [0 0 0 0 0 0 0 0]))

(defn credit [accounts index amount]
  (dosync (alter accounts assoc index (- (nth @accounts index) amount))))

(defn debit [accounts index amount]
  (dosync (alter accounts assoc index (+ (nth @accounts index) amount))))
