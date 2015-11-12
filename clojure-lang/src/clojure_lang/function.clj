(ns
  ^{:author chilchenchi}
  clojure_lang.function)

(->> [3, 2, 1]
  (sort)
  (map (fn [e] (str (+ e 1))))
  (interpose ",")
  (reduce (fn [w, s] (str w s))))

(defn fac [n]
  (->> (iterate inc 1)
    (take n)
    (reduce (fn [a, b] (* a b)))))
