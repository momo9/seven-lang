#!/usr/bin/env io

sum := method(
    m,
    l := m flatten
    l sum
)

m := list(
    list(1, 2, 3),
    list(10, 20, 30),
    list(100, 200, 300)
)

sum(m) println