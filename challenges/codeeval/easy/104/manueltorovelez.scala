

/**
 * @author Manuel Toro V
 */
object Main {

 def main(args: Array[String]) {
  
  val ruta = scala.io.Source.fromFile("C:\\Users\\Manuel Toro V\\workspacescala\\wordtodigit\\src\\test.txt")
  val lineasentrada = ruta.getLines().filter(_.length > 0)

  val map = Map("zero" -> 0, "one" -> 1, "two"   -> 2, "three" -> 3, "four" -> 4, "five" -> 5, "six" -> 6, "seven" -> 7, "eight" -> 8, "nine" -> 9)

  def evaluar(lineaentrada: String): String   = {
    val numeros = for {
      palabra <- lineaentrada.split(";")
      digito = map(palabra)
    } yield digito

    numeros.mkString("")
  }

  lineasentrada.map(evaluar).foreach(println)
  
}
}
