

import com.sun.org.apache.xpath.internal.operations.String
import java.lang.reflect.Array
import java.awt.font.NumericShaper.Range



object main  extends App {
  //val nums = "3,5"
  val source = scala.io.Source.fromFile("/home/camilo/test_20")
  val lines = source.getLines.filter(_.length > 0)
  for (l <- lines) {  
    //print(l)
        val s = l.split(",") 
        var n = s(1).toInt
        var con = 1
        var out = 0
        
        if ( s(0).toInt <  s(1).toInt) {
           out =  s(0).toInt
        }
        
        while (out <= s(0).toInt){
         out = n * con
         con += 1
  }  
    con -= 2
    out = s(0).toInt - (n * con)
    println(out)
    
  }
} 
