
import com.sun.org.apache.xpath.internal.operations.String
import java.lang.reflect.Array
import java.awt.font.NumericShaper.Range
import scala.collection.mutable.MutableList
import com.sun.org.apache.xpath.internal.operations.Minus
import sun.security.util.Length

/**
 * Title: capital words
 * CodeEval: easy
 * Url: https://www.codeeval.com/open_challenges/93/
 */

object Unique extends App {
  
  /**
   * convert word in capitalize
   */
  val source = scala.io.Source.fromFile("/home/camilo/test_23")
  val lines = source.getLines.filter(_.length > 0)
  for (l <- lines) {
    val words = l.split(" ")
    var out = ""
    for(word <- words){
        out += " " + word.charAt(0).toUpper + word.takeRight(word.length()-1) + "" 
    }
    println(out.takeRight(out.length()-1))
   }
  }
