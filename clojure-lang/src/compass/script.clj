(ns
  ^{:author chilchenchi}
  compass.script)

(def directions [:north, :east, :west, :south])

(defn turn [base offset]
  (rem (+ base offset) (count directions)))

(defrecord SimpleCompass [bearing] Compass
  (direction [_] (directions bearing))
  (left [_] (SimpleCompass.(turn bearing 3)))
  (right [_] (SimpleCompass.(turn bearing 1))))