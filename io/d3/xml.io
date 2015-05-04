#!/usr/bin/env io

XmlParser := Object clone

XmlParser level := 0 # controlling indentation

XmlParser forward := method(
    ((self level) * 2) repeat(" " print)
    "<#{call message name}" interpolate print
    self level = (self level) + 1
    call message arguments foreach(i, a,
        content := self doMessage(a) # if map, message is "curlyBrackets("k1" : "v1", "k2" : "v2")"
        if (i == 0,
            if (content type == "Map",
                content keys foreach(k,
                    " #{k}=\"#{content at(k)}\"" interpolate print))
            ">" println)
        if (content != nil and content type != "Map",
            ((self level) * 2) repeat(" " print)
            content println))
    self level = (self level) - 1
    ((self level) * 2) repeat(" " print)
    "</#{call message name}>" interpolate println
    nil)

OperatorTable addAssignOperator(":", "atPutNumber")
Map atPutNumber := method(
    self atPut(
        call evalArgAt(0) asMutable removePrefix("\"") removeSuffix("\""),
        call evalArgAt(1)))
XmlParser curlyBrackets := method(
    m := Map clone
    call message arguments foreach(a,
        # doMessage(a) cannot work
        # (m "k" : "v") will not be seen as a statement
        # maybe a bug
        m doString(a asSimpleString))
    m)

XmlParser ul(
    {"key": "value", "k": "v"},
    li({"lik" : "nono"}, "one"),
    li("two"),
    li("three"))
