#!/usr/bin/env io

List + := method(
    rhs,
    if ((self size) != (rhs size),
        Exception raise("size not equal"),
        l := list()
        for (i, 0, (self size) - 1,
            l append((self at(i)) + (rhs at(i)))
        )
        l
    )
)

a := list(1, 2, 3)
b := list(2)
c := list(1, 8, 1)

(a + c) println
(a + b) println