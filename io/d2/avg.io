#!/usr/bin/env io

List myAverage := method(
    s := 0
    self foreach(i, e,
        if ((e type) == "Number",
            s = s + e,
            Exception raise ("#{self}\nelement with index[#{i}] is not a number" interpolate)
        )
    )
    s / (self size)
)

list(1, 2, 3, 4) myAverage println
list(1, "xxx") myAverage println