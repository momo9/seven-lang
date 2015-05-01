#!/usr/bin/env io

Number fib := method(
    if (self == 1 or self == 2,
        1,
        (self - 1) fib + (self - 2) fib
    )
)

1 fib println
2 fib println
3 fib println
4 fib println
5 fib println
6 fib println