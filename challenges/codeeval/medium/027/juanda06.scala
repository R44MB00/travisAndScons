import scala.annotation.tailrec

object Main extends App {
  val source = scala.io.Source.fromFile(args(0))
  val lines  = source.getLines().filter(_.length > 0)

  val sb = new StringBuilder()

   def decimalToBinary(num: Int): String = {

     @tailrec
     def iter(num: Int): String = {
       if (num == 0) sb.reverse.toString()
       else {
         sb.append(num % 2)
         iter(num / 2)
       }
     }

     num match {
       case 0   => "0"
       case _ => {
         sb.clear()
         iter(num)
       }
     }
   }

  val res = lines.map(_.toInt).map(decimalToBinary)

  res.foreach(println)
}
