/**
 * @author Manuel Toro V
 */
object Main {
      def main(args: Array[String]) {
  
  val ruta = scala.io.Source.fromFile("C:\\Users\\Manuel Toro V\\workspacescala\\multiplies\\src\\test.txt")
  val lineas   = ruta.getLines().filter(_.length > 0)
  
  
  val numero = lineas.map(str => str.toInt)
  val sumas     = numero.sum

  println(s"$sumas")
}
  
      
}
