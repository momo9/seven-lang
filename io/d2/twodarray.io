#!/usr/bin/env io

TwodArray := List clone

TwodArray dim := method(
    x, y,
    self setSize(x)
    for (i, 0, (self size) - 1,
        self atPut(i, List clone)
    )
    self foreach(e,
        e setSize(y)
    )
)

TwodArray set := method(
    x, y, v,
    self at(x) atPut(y, v)
)

TwodArray get := method(
    x, y,
    self at(x) at(y)
)

TwodArray println := method(args,
    "---------" println
    self foreach(line,
        line join(", ") println
    )
    "---------" println
)

TwodArray trans := method(
    ret := TwodArray clone
    ret dim(self at(0) size, self size)
    self foreach(i, line,
        line foreach(j, e,
            ret set(j, i, e)
        )
    )
    ret
)

TwodArray writeFile := method(
    fileName,
    f := File with(fileName)
    f openForUpdating
    self foreach(line,
        f write(line join(","))
        f write("\n")
    )
    f close
)

TwodArray readFile := method(
    fileName,
    ret := TwodArray clone
    f := File with(fileName)
    f openForReading
    lines := f readLines
    f close

    lines foreach(line,
        ret append(line split(","))
    )
    ret
)

a := TwodArray clone
a dim(2, 3)
a println

a set(0, 0, 11)
a set(0, 1, 12)
a set(0, 2, 13)
a set(1, 0, 21)
a set(1, 1, 22)
a set(1, 2, 23)
a get(1, 2) println
a println

a writeFile("mat.txt")

b := a trans
b println

c := TwodArray readFile("mat.txt")
c println