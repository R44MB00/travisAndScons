
object Main {

  //toma de los valores del archivo
 def main(args: Array[String]) { 
  val ruta = scala.io.Source.fromFile(args(0))
 // val ruta    = scala.io.Source.fromFile("C:\\Users\\Manuel Toro V\\workspacescala\\even_numbers\\src\\test.txt")
  val lines     = ruta.getLines().filter(_.length > 0)
  val numeros   = lines.map(line => line.toInt)
  
  //comprobacion de si es par
   val par = numeros.map(num => if(num % 2 == 0) 1 else 0)
  
   //mostrado
   par.foreach(println)
 }
}
