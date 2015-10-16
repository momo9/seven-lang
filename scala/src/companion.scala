/**
 * @author 五羖 chi.lchenchi@alibaba-inc.com
 * @version 10/13/15 1:39 PM
 */

class MyClass(val name: String) {
    def getName(): String = name
}

class Person(override val name: String, val age: Int) extends MyClass(name) {
    override def getName(): String = name + ": " + age
}

object MyClass {
    def static(): String = "static"
}

var myClass = new MyClass("Wugu")
println(myClass.getName())

var person = new Person("Wugu", 25)
println(person.getName())

println(MyClass.static())
