#!/usr/bin/env io

MyTarget := Object clone
MySender := Object clone

myTarget := MyTarget clone
myTarget showSender := method(call sender)
myTarget showTarget := method(call target)
myTarget showArgs := method(call message arguments)
myTarget showName := method(call message name)

mySender := MySender clone
mySender mySend := method(myTarget showSender)
mySender getTarget := method(myTarget showTarget)

mySender mySend println
mySender getTarget println
myTarget showTarget println

myTarget showArgs("one", 2, :tree) println
myTarget showName println
