#!/usr/bin/env io

Number normDiv := Number getSlot("/")

Number / = method(
    x,
    if (x == 0,
        0,
        self normDiv(x)
    )
)

(5 / 0) println
(5 / 3) println