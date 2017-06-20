
import scala.collection.mutable.MutableList
/**
 * Title: Fizz Buzz
 * CodeEval: Easy
 * url: https://www.codeeval.com/open_challenges/1/
 * Simulation game Fizz Buzz
 */
object FizzBuzz extends App{
  //test_case
  val source = scala.io.Source.fromFile("/home/camilo/test_25")
  val lines = source.getLines.filter(_.length > 0)
  for (l <- lines) {  
        //print(l)
        val game = l.split(" ")
        val x = game(0)
        val y = game(1)
        val z = game(2)
        var out = ""
        val list: MutableList[String] = MutableList()
        //println("nums: "+ x + " " + y + " " + z)
        //var id_x = 0
        for( id_x <- 1 to z.toInt){
            if(id_x % x.toInt == 0 && id_x % y.toInt == 0){
              list += "FB"               
            }
            else if(id_x % x.toInt == 0){
              list += "F"
            }
            else if(id_x % y.toInt == 0){
              list += "B"
            }
            else {
              list += id_x.toString()
            }
        }
        for (a<-list){
          if(out == ""){
            out = a  
          }
          else {
            out += " " + a 
          }
        }
        println(out) 
  }
}
