(ns clojure-lang.core)

(def people {:name "wugu", :age 25})
(let [{name :name} people] name)
(println name)

(defn big
  [st n]
  (< (count st) n))

(defn my_size
  [v]
  (if (empty? v)
    0
    (+ (my_size (rest v)) 1)))

(defn my_size_recur
  [vector]
  (loop
    [recur_vector vector count 0]
    (if (empty? recur_vector)
      count
      (recur (rest recur_vector) (inc count)))))