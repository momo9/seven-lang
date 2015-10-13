/**
 * @author 五羖 chi.lchenchi@alibaba-inc.com
 * @version 10/13/15 11:43 AM
 */

class Compass {

    val DIRECTIONS = List("North", "East", "South", "West")

    var bearing = 0

    print("Initial direction: ")
    println(direction)

    def direction = DIRECTIONS(bearing)

    def inform(turn: String): Unit = {
        println("Turning " + turn + ", bearing " + direction)
    }

    def turn(dir: String): Unit = {
        if (dir.equals("left")) {
            bearing = (bearing + 3) % DIRECTIONS.size
        } else {
            bearing = (bearing + 1) % DIRECTIONS.size
        }
        inform(dir)
    }

}

val compass = new Compass

compass.turn("left")
compass.turn("left")
compass.turn("left")
compass.turn("right")