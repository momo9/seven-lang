def forLoop: Unit = {
    for (i <- 0 until 5) {
        println(i)
    }
}

forLoop

println("for each")
(0 until 10).foreach { i =>
    println(i)
}