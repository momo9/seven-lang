import scala.actors.Actor

/**
 * @author 五羖 chi.lchenchi@alibaba-inc.com
 * @version 10/15/15 11:48 PM
 */

case object Poke
case object Feed

class Kid() extends Actor {
    def act(): Unit = {
        loop {
            react {
                case Poke => {
                    Thread.sleep(1000)
                    println("poke")
                }
                case Feed => {
                    println("feed")
                }
            }
        }
    }
}

val a = new Kid().start()
val b = new Kid().start()

a ! Poke
b ! Feed

