(ns
  ^{:author chilchenchi}
  clojure_lang.async)

(def a (future (Thread/sleep 2000) "a"))
(def b (future (Thread/sleep 3000) "b"))
@a
@b