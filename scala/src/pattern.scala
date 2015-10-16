/**
 * @author 五羖 chi.lchenchi@alibaba-inc.com
 * @version 10/15/15 11:24 PM
 */

def factorial(n: Int): Int = n match {
    case 0 => 1
    case x if x > 0 => factorial(n - 1) * n
}

println(factorial(0))
println(factorial(3))
