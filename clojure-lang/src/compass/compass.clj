(ns
  ^{:author chilchenchi}
  compass.compass)

(defprotocol Compass
  (direction [c])
  (left [c])
  (right [c]))
