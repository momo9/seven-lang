#!/usr/bin/env io

fib := method(
    x := call sender doMessage(call message argAt(0))
    if (x == 1 or x == 2,
        1,
        a := 1
        b := 1
        for (i, 3, x,
            t := b
            b = a + b
            a = t
        )
        b
    )
)

fib(1) println
fib(2) println
fib(3) println
fib(4) println
fib(5) println
fib(6) println
